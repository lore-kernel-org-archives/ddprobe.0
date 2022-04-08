Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9637B362
	for <ddprobe@lists.linux.dev>; Fri,  8 Apr 2022 07:23:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649402638;
	h=To:Subject:From:Message-Id:Date;
	bh=efg8w3zKG1R5cRwiIXvMzvzMzLb9xD+GcbDPWD/XkkM=;
	b=d3sF8Tm947D6hBs9YzZv+tNsZlu1AFH4RmbPbPqnAkgEG+BtK2myvyHjddsluvF3
	NnzjSb+pQHysDbQZrH6EPqOhNP36boi/4WTe42eFpq205Ko1kkQP17X87ZThfNiTskl
	/OWwq/d1sJGdKjN+lNQ23F3W/ngi0BW3f4+pcmls=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649402638;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=efg8w3zKG1R5cRwiIXvMzvzMzLb9xD+GcbDPWD/XkkM=;
	b=kcupm+u7CR1D1IUx3f0eBpQkwainqPaTyun5Y/14+XkHc+pjR1Gp1pSIPdvqaUAP
	zM+/q/X0qO/2LmmGY3ni7Fl/sB3jCt9ADoxCP5LlyYScXVHARt8iOQQJ0pzXeyIucav
	S29OGm26W6GbXEC3HNpSH8e0PZ0AM7jOAcMVHdSg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180080ef057-430fcf87-9bc0-4520-a8c9-0be74cbfdc40-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f625d01cef3ff83daeffbb1d3cd2c6aa19978fadfe29649c87cc81167829408a
Date: Fri, 8 Apr 2022 07:23:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.08-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649402638
