Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0181C7C
	for <ddprobe@lists.linux.dev>; Sat, 25 Jun 2022 22:26:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656196012;
	h=To:Subject:From:Message-Id:Date;
	bh=B3AzZFuqYgD3PSx4g7GASCpo9LqravRGfhDWzJ4IqKI=;
	b=RWmHhaaWdbRSVO0oSoHkpxGanpcQEU9O/GmrEGBbNhxVJ2DC94nrtq4JCVt5Gi9x
	AY1NJkWtz0V9dnAv3sGu39MSKWYaG8don66QiGdPKxBQSmf64V4ukZcP0DoO31gXjRq
	ahgpjIkyUi8uWLz2RGVVRtBZh55bdCd2sXkRWW2A=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656196012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=B3AzZFuqYgD3PSx4g7GASCpo9LqravRGfhDWzJ4IqKI=;
	b=SXL07G1YH2XSFh2OBRjbJiZ7kJciBkmdGim8+piVJoUr9mcQSGlRoG4iXbOe2sdi
	8FdVWzCstqsDkfoOpgivVF69HNo4R5H82YLkG9AmR0Ghc86AHUPhZJPrIzCuQBTj/5x
	J2c3m0Xi3/uaNfLz8MoUyWmG/ZUsGNKEzikG39fk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101819cf998ef-0d6c47a3-bea5-416f-a7a2-1a918c9bb89a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6cce251469997dc898d0cc4c6c83a581835eac3820b62aca108b26a2b1f46362
Date: Sat, 25 Jun 2022 22:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.25-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656196012
