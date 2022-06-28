Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10607368
	for <ddprobe@lists.linux.dev>; Tue, 28 Jun 2022 02:36:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656383812;
	h=To:Subject:From:Message-Id:Date;
	bh=FzIur5zB5Pw1nhTlEN9cernq286JbXMb8wBgHGkEAsg=;
	b=UynmzY6Tf/X6+MdXmiqKPYqr6zTbcYZb2cch/S3mJbno0iJXcXspXOmPcGythUkz
	k1c5xggx5ZGSTceRxBUDXUJFIwScboP7Qh5r1PE40pO8N4abqmSClCWf/dOcszSakq6
	ru1kNcMlZZeDPWCf3fc9ChMsmq6s/wy66LJzxVHg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656383812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=FzIur5zB5Pw1nhTlEN9cernq286JbXMb8wBgHGkEAsg=;
	b=OrgT1FpK/BOIBa4GpCVPIffOpijSHIlqCBMKQq3qpFbG1FvylATYslmXOHH768yX
	pJCO+Y5PrCADQH3jPy6a8HGVrkdJ2W/46Hn6yRq5M2HQ89JzwQHr4C8/Ci7XgWrGloI
	koDol0Kwo7GTrfpRdbOuFdHTSEFi850O1LX2tkaA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181a82b32fb-afeffa07-e609-4e3d-bb8e-8027c90ecdd6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c6f2e85649892403049a307d18a3efa7e908951bcf8382572f9b36d1306bf010
Date: Tue, 28 Jun 2022 02:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.28-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656383812
