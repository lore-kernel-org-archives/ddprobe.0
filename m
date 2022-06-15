Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F1A7F1FA4
	for <ddprobe@lists.linux.dev>; Wed, 15 Jun 2022 03:44:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655264699;
	h=To:Subject:From:Message-Id:Date;
	bh=v3x+KW17DujZJcEoq4DJzVC+ZVilBWbn+NtEp7l15PI=;
	b=kz5og42iUutzJY2g2eJCInf9TBfq4Eu7Da1XpOOdeJUb/EGQKIQyy/SMZ4RMfTrR
	vVTj/r4DO86hmqs+x8mMzqgx0qjUVwW6mQse/l2HDdFx1b/aKTERCFzGS70aFyyMVXq
	gWKhM0OkTLLwdze8becs8SXTOONdezckbAtZBK5k=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655264699;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=v3x+KW17DujZJcEoq4DJzVC+ZVilBWbn+NtEp7l15PI=;
	b=HpErN1pEjLIh/HV+2HvO8EmkB72Lz3+tGHqj7Cpn4W6w4196+t6RLNMN6G67472C
	f5JMCzCe0q5lBxfY2c3/GTC0G0g+csaYdnNprrkJoHFE4RpnSRSR36BZ0YUdYw+opkl
	EshAYymeqTWb5uZMGrrql4nAFmVy+JEbyLqRtPpw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101816576e3ac-5fd3a1de-fe04-4966-9eea-50a283a145bf-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4bbe343b783a49310b63b055e7494698b784e2ce0da8c1382d2db390e76a5746
Date: Wed, 15 Jun 2022 03:44:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.15-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655264699
