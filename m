Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 632B42595
	for <ddprobe@lists.linux.dev>; Mon, 10 Feb 2025 02:35:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739154954; cv=none; b=Q+uVEU1+Zi8/pT8qYC27q9AOfetXRAP6yqaA0C3Zbefht8Cmtl50262NGy0qSzOwwnPnT8oubHB0LEZaJAK1y2X6pHrFTVYJYfFZGD1+CAKT2wV+T0taU+g+fbrYJ6ahP7/8k/1daxDQiVXRXq5BgZH6Gkg9LA2itZB4m2KM9Ms=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739154954; c=relaxed/simple;
	bh=cReC2a0we6DZ4jR1TeNWX0o5WddZ4vvfRbIdEiOvooc=;
	h=To:Subject:From:Message-Id:Date; b=H7x2IN/3CtM2SK2ub9d4nAGa+oOG+HaLMuHF/WBE0vzJuhpUDRgEcTMdNeq2wgppqbcrkLPzC73rAAUS7+SZG4iTK5jk4UpBgDxooM6e89juxIDHKbEQx+F8ylb4MMHEU1vqFwn2wJJ9nKRI0q/acftjNR6dIlT3h0+W69K1Wh4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Xqsg9x2a; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Xqsg9x2a"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9FC6C4CEDD
	for <ddprobe@lists.linux.dev>; Mon, 10 Feb 2025 02:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739154953;
	bh=cReC2a0we6DZ4jR1TeNWX0o5WddZ4vvfRbIdEiOvooc=;
	h=To:Subject:From:Date:From;
	b=Xqsg9x2ap1RrfDHQLJJiJ9tcjvlyFapBl+YKMMaGq66PJczD+nRUV31u/Ir4GnZW+
	 YjpUQ/OzS6YJ0qAJm6szrh8/gHgQv/trVezJABsdmCVYQ5f4ToBEX8gOU1WJCFq2Du
	 JdaWH3MRV2OJPJkhh//TS+GX5ErKWYoROiiMo1zGPnHUmdQGKNAoIyXvqFpXUvJAlf
	 bWYQp1hSLa9L/f8tvCOdVm3gDZpPeo5JjrHjc1b+UjRm9vWZxQ7hnh3kd/TcUVDghn
	 wpD91+gzXngesnBwil8R2Q7zhO5xa2uFILwzYhfu4KDjiA7vwnSdiaQ+X/2qxIb0cl
	 M8URZSiDmHH2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1BE9C0219B
	for <ddprobe@lists.linux.dev>; Mon, 10 Feb 2025 02:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173915495367.7240.6126846114638602513.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0d9a76809fa62a7bfcf823c29a5cd22413d54e7f31c5a9b38427808f7ab21df0
Date: Mon, 10 Feb 2025 02:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739154953
