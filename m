Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC5A07F
	for <ddprobe@lists.linux.dev>; Tue,  3 May 2022 08:31:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651566718;
	h=To:Subject:From:Message-Id:Date;
	bh=gq73EUnmRoeHxkWCyZhE6Uei3RnUJXZ6eGh59kMNCw0=;
	b=hesHff9x7NofFH6UKhOnST+baBOr8HfN+QOHdo/QEXPFAa5h63cIQilPmwXuHpFZ
	2fIhDSLFLLQn9DF2Nks4sXwrPMRJdHNQY4DQ8V8uH/TgylANsheC+e97E5RWmh4mC0n
	0vj5B9uiDqXb7Gmph5LvyG82EQi1cph51ee3I8QY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651566718;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=gq73EUnmRoeHxkWCyZhE6Uei3RnUJXZ6eGh59kMNCw0=;
	b=afnjHW9VXeNz7HFlwOt9dS0SPTHbc/MQ2I88Lm/FLbjfQe4VxWcSC8BSzG3rtPRy
	UwCfw7VkgG6rBTLsIaZAErm+MzoySdjyvqFBPGygmZgIrLl+xg3Sm67FQ81qH2WjURC
	qTJYzoGwnQsI9q6+g7RxLowvZA7vrNwG7F6a+d48=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180890c2d14-fc4802e3-fb5d-4245-afd0-0e297130ebf9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8a00f4e6b4fbf2fa33288a96b127d40f211988ec890b9088de033fd328a26b6a
Date: Tue, 3 May 2022 08:31:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.03-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651566718
