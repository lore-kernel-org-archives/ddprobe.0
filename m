Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6DF852F4E
	for <ddprobe@lists.linux.dev>; Tue, 22 Feb 2022 14:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645538485;
	h=To:Subject:From:Message-Id:Date;
	bh=U0vF/peQihZ5TOy21HXwfL9CxX98DqPp6ZUu1E6Vh+c=;
	b=aK7tRUptYQ5c7KRAyMP7B2g75M9YIKKhIK0vPeIQnK2mtiQTW6PoowTB8z6kdOBm
	EZZC/5mmlvAcl2WA7EUcpYNNUqcmkkHAdCJMP5allcSjWGf6ORY+t1DOiGchmD8SolG
	ifnbFRCXpJUcBNd732RwIWDkczgLS5ZBQhQO3G6I=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645538485;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=U0vF/peQihZ5TOy21HXwfL9CxX98DqPp6ZUu1E6Vh+c=;
	b=ZL8IfHa6CHplM1pcn6ZTlci4sp3GOp65WBcC7V9Bm5+SafXUrPcOFeKr/LeNpq/E
	JYlwlXqhZtRZnjZK37IVMLLMzFja2w4qqcdO0sm/V2aAYgbZtkuucqxdC5+406NW7WD
	+nBEUr+069a+o5wf3UwqBJAS7fee8jG3PJm4ygDg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f21bca215-12b3f060-f46f-4551-864e-6c6ba426f034-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 506ea0591a03e095244a94ee0387cbe2c2e189846423c8ca59bf95872d9245ae
Date: Tue, 22 Feb 2022 14:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.22-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645538484
