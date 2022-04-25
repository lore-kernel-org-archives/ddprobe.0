Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E63DB33D6
	for <ddprobe@lists.linux.dev>; Mon, 25 Apr 2022 22:18:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650925138;
	h=To:Subject:From:Message-Id:Date;
	bh=SDzaHnjZcNGqbVlhKXnGs8279squJDBO2xNOWlYlv+I=;
	b=JvDT7WeCBXkM2rx0feHI0e7qa5Mx+BDS9vbs0YRRJqwZDuyLH7UeKHAb78XHJAZD
	cIbdU7BWWT0mHPum42qq24Rue4/wmLXE4XTjOF4laKLPGAIPEjbEoxKk5g+CTJxoSsG
	0qMnE6Qe4TLmsVBJViUwDY63Y7MAqT04KICCCgoU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650925138;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=SDzaHnjZcNGqbVlhKXnGs8279squJDBO2xNOWlYlv+I=;
	b=Vx8KRO3Nr4dfw5AkooJZN/OjcECbO3ioxDSMfzZWEfZFa+Mzbm7Gzvod+DJ27Rr4
	jD48VvxfELjH/JY8m3XcWv1CL2h+iO5c2ipxXA+lp6tFMB+6yOthcxzgcWgwyC20MNg
	/IHDFXtUZ2KmQwh+7F+hCQR5cDmja27uV63JPc/c=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018062ce714d-19699d94-827f-410f-83e2-613df32d0a5f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 69c3bb7a5bf10d07369b881153c1b0e6609fa7666a71d076529ef3f0e6657699
Date: Mon, 25 Apr 2022 22:18:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.25-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650925138
