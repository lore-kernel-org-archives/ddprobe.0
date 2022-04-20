Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF4ED10F0
	for <ddprobe@lists.linux.dev>; Wed, 20 Apr 2022 06:52:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650437578;
	h=To:Subject:From:Message-Id:Date;
	bh=7lG4DowP6ez05mvg1mG0hPA940s3DZ85phMZVkpbOeI=;
	b=JeS2y6s7R5kAKAnCaQDVMPYY8CZlSyI0j0XnY+j9rFmmz2Mc+Pc5rCSIykvO1TPk
	0lHPFURUo4K1JK1LBNaJx7rZprOVCy+/4Uf+mYHTRqFNF9Voj9GnSNuF2c1Lbl52CNJ
	XLjSXwxbrOh6+FDsg4y2PtH+EPLoUosEpaGLpCis=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650437578;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=7lG4DowP6ez05mvg1mG0hPA940s3DZ85phMZVkpbOeI=;
	b=NURovC7sgatRaCUI9GLx/cDtm7gYJ5/xL5S/6QgYpjD+edUw8FBCcDMb/SjYH0hX
	cAw42fHQs1AqdKqIL+A6KxE07cyI/itq9b4f0Qm2DlVysxWEz130iCx8L3YrI3w+S4x
	5/zZgaT/pVHO0/9WSWTf1cfwD3Chc3vzv4uS56sE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018045beddf9-51c5a595-1573-4755-80a5-7f2d6515d862-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 320713ca38444462f9ad20b276d5c2ff125cda3fe6690a4eddaf4939a603f35f
Date: Wed, 20 Apr 2022 06:52:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.20-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650437578
