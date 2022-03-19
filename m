Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F1D3720E0
	for <ddprobe@lists.linux.dev>; Sat, 19 Mar 2022 17:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647709285;
	h=To:Subject:From:Message-Id:Date;
	bh=it7LByaVvJuNDNna9xWLyXg89Kq8g45K4Vgys2yfJlw=;
	b=AixYxilu5nCuBSA+KdzBHjzSknaxjEdisee/9BUkGyFvK8crjmxVL9YNO9rsz+9I
	jGd5pj6knKDy1FpLzf+7CBr+y5kmCI3Lorj1R9IEVa9lVm7TFFxRSBQVaMrFIf1tjPv
	nbQ2ktVoZJ0YYjdJv8vZa9Cx7PXNKhMA9Ii5etqQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647709285;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=it7LByaVvJuNDNna9xWLyXg89Kq8g45K4Vgys2yfJlw=;
	b=iaJJ8UA041MK7BmSctkjOS/90HQ25ljV7aXUJpI3MGtEjcC+r2ecbiJW7qOtxS++
	g/Esimx/BhR/66yKYw0BCqmjBs/o6VS1JqDiylXugfeg7PgcPxm/Am7T+RexT3QF8d/
	oHTGfXc0x1CEPvopNa6NZPdEPtd6v/dNCOgTZZ5Q=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fa320699b-964dd00f-8271-4352-a4b8-6c4b0e9e52c8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 91bd4d658c9af1dc9571f39125a62d9bb0dcd8167db6e8982889eddb8d545776
Date: Sat, 19 Mar 2022 17:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.19-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647709284
