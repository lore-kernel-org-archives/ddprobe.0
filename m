Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 274A57C
	for <ddprobe@lists.linux.dev>; Wed, 25 May 2022 11:05:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653476699;
	h=To:Subject:From:Message-Id:Date;
	bh=pETeBzUMJLeKZ/EtcRB7alASl8AoQ5+2+vWj3FFmku0=;
	b=ASpJRWpabTwTvtxHsDA+0BcnZD+wUp+8EzXp6kS4tbsW0HjNg1xe+qq1MNbialyp
	5sIdo+FrXMsQCQs5BC86lTovmlTLYsfgTawRmthK8KY4jjP2cDgIMgn5crg/UbOEWW2
	5iKFKNJceH1lHPBYx43wRy2tfE/ga+wK33iLtQ9E=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653476699;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=pETeBzUMJLeKZ/EtcRB7alASl8AoQ5+2+vWj3FFmku0=;
	b=W7aT8yttN9kboCPJNyQj6vnqlYoefVuosiYVOVU9WxqO2yL6Y4EI37KqaGuwiRIp
	ScxnlM8XZUfyVz5uq4Ce47LD1bhO8jynXSck/DV4IXHFNXKfwUHOxtcWlqCPXXy5Bgq
	vQIayjhyhL+fduBugGarYv+MXH6sN/Szgd3/RrEw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180fae42c72-9599ee9c-8a06-42b3-aa28-e85fbc568163-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e61c115b6f1796cf5feeff153a22b902bf4124d8bbde558157d532eac60da2de
Date: Wed, 25 May 2022 11:04:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.25-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653476699
