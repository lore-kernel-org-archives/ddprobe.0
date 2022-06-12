Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 450147C
	for <ddprobe@lists.linux.dev>; Sun, 12 Jun 2022 01:27:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654997219;
	h=To:Subject:From:Message-Id:Date;
	bh=vigb57mD6aWvwaYu0Nef/ju8RgDY2Ta7ZXOU+Ra+/0I=;
	b=Oxz9ZM4hpnZ6alTOuJ/JB4HA7Z8RdM3CvDLyDaKOQQjKk87x5Xwm39zUhYXnb0+D
	QNyVmvfhyduxXrpIWc+Dx7Qr6F3vuatb5AhSl0oQud7HUbkb72TyFeFFRlLbU4Ia5tP
	D1sdJPbfQLGypXTarZlqsnhaTzCC0oh+5yJVNyQQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654997219;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=vigb57mD6aWvwaYu0Nef/ju8RgDY2Ta7ZXOU+Ra+/0I=;
	b=DtCGYUqJPwIGAz2Y/eHWAAQTui/mRxyG2/hmGf0RoCLJM7eOixOMk15vfLQKEJha
	0bvmdrfTyzdJBxEKqx0cWZRSl7Bfgnw0uahcRkQOeu8m/NJGGr3sCEAwfnamEPQ8/oi
	70jY9OWZqWDL28ITdmwlrwjYRPTsfJnPbR6y4oNE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181558577c9-405450fc-9992-45fd-b515-e1d259fa73a7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b49b8275cd959b1118f591689cd98cd7d6fda5cc8057d069f9c6aac917017c7c
Date: Sun, 12 Jun 2022 01:26:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.12-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654997219
