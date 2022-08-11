Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 652814A15
	for <ddprobe@lists.linux.dev>; Thu, 11 Aug 2022 18:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660243852;
	h=To:Subject:From:Message-Id:Date;
	bh=e0/yVi1MtF8MlzJApswuSEvXowFzP2Eu41OPQFXIvl0=;
	b=GhIQuziQhmTIm5E3zDPve1Z8rhDR9Gzirx+nZOh9EnrW8SuvMPYqkGjxKAbiCPSl
	cB1j4c5y3ccwn/poMBH8PMeIOCrt5EMxYx9Y3dQBAxzYFrDEJnDVdRPupIGiS/xjjiY
	7eIASYBelA/I4j8ktV6DEwT5wVOe3akwuf69wh+w=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660243852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=e0/yVi1MtF8MlzJApswuSEvXowFzP2Eu41OPQFXIvl0=;
	b=W0sByUhlbb9e2CfuNj1BGqIrBqXl7suUVXxk/Ihk6aPBb1dDQ5shqwEo2HUwvS9w
	dzthfJhnNVhRG5mYdKUimGzL2ciHHsnimTUpjhw4mDWU08qCGfBarSX0Fp4hMyIcfmS
	TLLGGLJ8F8U78QdULb0r8NbbaKj6x1O3Sv6KFqYY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101828e3ebd35-e6903971-a3d4-4cf1-9de2-9529adc58982-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: af352f4cb51c00d90c559e381dc9609741ef6d25339795999137049f1145708f
Date: Thu, 11 Aug 2022 18:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.11-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660243852
