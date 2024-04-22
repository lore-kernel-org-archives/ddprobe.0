Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7F0544A33
	for <ddprobe@lists.linux.dev>; Mon, 22 Apr 2024 02:10:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713751823; cv=none; b=KSSUfJrlUULR0jnacaCF9Q3A1pw+57Zx5hEI6e3HGu6QnbUJLJ1oubbck/hLxoDcAoOZyl3dJMMFqkV0TTQ5so6ulBvAD3Pdngaayi8VcUUO6RzzU83FEZo6jbHMige6wmaCfq7mRIhUh4wTzSSUMQhBk2+s5AFllB+8UP2sJNI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713751823; c=relaxed/simple;
	bh=e4WIQNc1PilF93OTFQ7Ns0mHMTTbTAPvmjIPLiDOQJo=;
	h=To:Subject:From:Message-Id:Date; b=FXrMTPUXHk3TGbGVgi1NjPVltyfmrTlY+v9RiHGj00Eh4Cbn9Cb74psGUVZzh6Qs98rxYv7khz8djzzcAiXSsNOcLvbpLUVL8Vd9rhTfbu9mQukzeUFIUhduBkEfxw2FzYXLFhosfvdJrHoHecug2i3Z22k+p+h5vSlABHQL0ww=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KcTKWV+0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KcTKWV+0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF73DC113CE
	for <ddprobe@lists.linux.dev>; Mon, 22 Apr 2024 02:10:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713751822;
	bh=e4WIQNc1PilF93OTFQ7Ns0mHMTTbTAPvmjIPLiDOQJo=;
	h=To:Subject:From:Date:From;
	b=KcTKWV+09ULM/M5He43EOJjYbR4JahvWwmzHovLSzFUeKMVpAE+7k0ZAXZQ4IWzhb
	 3z9ywTS0PUTQkBRbpc2lTs7DdAvHxS4RPHOivagJCUZRlLshNTjY6nxw859SDYdocm
	 mKRaOZinliBm6iaU7goyPGdxEkE3NxKntanix5bwFuML2jEWrM48zvhbOZCcM31Tp8
	 6GSSwPXtjKx8+UcppfPMX+ipioEUezGv5Ye1L1DxLMxRdCdWvwNY28EDv6BSOPt5uB
	 E+wmIKGXpNg050QPvOBnsmzjBjhqddbMXnGuvvYK8od4CiRToTnecBl678gYvTndMe
	 iQwSU1qZjuCAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C81E3C4345F
	for <ddprobe@lists.linux.dev>; Mon, 22 Apr 2024 02:10:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171375182279.7495.10721982609434827836.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f49069e91eb213d6bb3354abd688792eeffae1e372f57774fec74a97141445cc
Date: Mon, 22 Apr 2024 02:10:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713751822
