Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8D3D84C9D
	for <ddprobe@lists.linux.dev>; Thu,  4 Aug 2022 18:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659638453;
	h=To:Subject:From:Message-Id:Date;
	bh=ZpqNWmzg7gVRcKaLL7OqM1q7PVf8m8SfjI4F8Wir2XU=;
	b=Vutm/ikjC826C7vqc1xPB88nFSAwvRXeYCwWTVySGg51/j+A2MOGJez1o1r8c1oe
	7WrmSxQRbttExRr93jCYQ5RTNhoggM5QihH8dyLbZ+aOrCr61/fNJ9CUNcGzAd+0UGR
	dlmtqEIRBh7CAKCeo0xf7TU60PAOcPb18+wTWyis=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659638453;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ZpqNWmzg7gVRcKaLL7OqM1q7PVf8m8SfjI4F8Wir2XU=;
	b=DZglaKkkIqITfEZSwPsQDQk1COdujc9SMeeslzUVSoJeifVzlOECnui5oj7vLsNa
	t0K97HOeq54uAYj8Tsw6ulbi+qkiT1hmr0uvTPANhm3WFc9fXiBwjJCZR0thAOpfSgk
	Sz9gdcFz9GT2Wn+Ebb8bwuKiMPVRgTm+eKIo4m8Y=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101826a291179-32ed2aa2-fd58-4d34-871d-d00530974c90-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b8c949c0c8f4396f3fd52ca2ee954e48078396227cd0a24ccf646033edab9323
Date: Thu, 4 Aug 2022 18:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.04-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659638452
