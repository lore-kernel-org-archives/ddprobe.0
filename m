Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6946D33C1
	for <ddprobe@lists.linux.dev>; Wed, 10 Aug 2022 21:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660165852;
	h=To:Subject:From:Message-Id:Date;
	bh=0G9dTMHrwKio1CQdRjbpM9GXJZSSOhBbCbncQiGaQTQ=;
	b=AKzGpd2u+venmiWWFccbHKQmHm69pd8aH0y/N7TVMas/7lWRPlmwuJV37Tpe+kkv
	l5LQKH7L7v9RfzAgZ2HvKmQhffHl9powQl1HarxFrcVK0dyd5pclVj7YW9iCbHATWpu
	YOZSaYIzY0jyIDMnPgG8ONcFE5r+0aWoYYJcaveQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660165852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=0G9dTMHrwKio1CQdRjbpM9GXJZSSOhBbCbncQiGaQTQ=;
	b=VHLsAkT/N3hQquts+OcHImy+DpABcvlwS+o+bOQQIYLkDB6OR9xJ2WjhkYa0c4E4
	Pib1RhZnnRi5kGxRKvXisalMXpuq6IzT4IPqku+cMNkfA67EUHNXu5XXPwFQkOvDqJB
	Db5Xm+WZj3SUAWdwn3OvQd3LAELuHwXuNTBo3Tl4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018289988d81-cbeb6f59-edd6-46bf-b773-7dd2e6023766-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 82602edec50c504f09fdfde74b11b3a209d39108c5b14b519ad4d1d546f8529c
Date: Wed, 10 Aug 2022 21:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.10-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660165852
