Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E4337A
	for <ddprobe@lists.linux.dev>; Wed, 15 Jun 2022 10:20:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655288399;
	h=To:Subject:From:Message-Id:Date;
	bh=cxPiAZLGYhTCj9VvmtNDPQQgMwAAEfJyV80h8bNuC1U=;
	b=BlzTXNSqprGu2TdziWG/GnlVVXr3psrDOvHPg3UnGdv2KTszQG6tmi+I9MtcHNh8
	nXqk7srxB95iLWG/E00PJeuwf26zYNnwxJYqJQNMUIqz1Kw0/68MTcVxNTYMbd7xv+q
	7L9Rt1EWsUfxhysnk5rjGyZ6ifcGeytCou+tLGFQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655288399;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=cxPiAZLGYhTCj9VvmtNDPQQgMwAAEfJyV80h8bNuC1U=;
	b=gogzjKrzZCMxL67BykeAhb8gR+fmvcuTs1lvLEhq4V/7j8GlQq1qRf8G/UnEDDWU
	XDTx7wrcGpWwWM+0Ut6CVhCs5JcPc4vX0GqsbUqGFepYnCdVL86ZJ/Sia3jWqQEXQIN
	Ha5iT+j4f3YoATs/GBizCqZKcb/vRc76mBqUidIA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018166e08608-60366488-468c-4b3f-a7d5-6887ddfb53fe-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 420618a3c07c806ad1331bab613d5a034f9e96daf2f70bdbb9c7b1b17cf0c61f
Date: Wed, 15 Jun 2022 10:19:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.15-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655288399
