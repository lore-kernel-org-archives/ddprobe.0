Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D340F20457E
	for <ddprobe@lists.linux.dev>; Mon, 16 Dec 2024 17:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734368753; cv=none; b=NtD8UZBzAX4T3OmMoLNORlmQA+3FmxvpPNMe8PbQr3FsIodibi6kUesol/wNvjx/DwdSfbWv0s1Uk43NhDFZ81jtgWVvisxcNj7MUDi0EUSK3yODMp/W73o/RfeytHRZ8BzVi3BDXvriLCatnwNUYUAQBfRWv6JZAAcZ2AMUCpA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734368753; c=relaxed/simple;
	bh=OIMrAcQVTjm5gIKbdZBpCGea6bczOZIuKI6WSMpmh/Q=;
	h=To:Subject:From:Message-Id:Date; b=JlqaLJi5wV2F2TJMB8iW8+fggxzxaB3/OIFyW7h6xOPANJtFUCbwlaiINhSb7WTqIwamWNMKdJUuQ7BH5Z17bj0kTnFDhd6csV3M19psQBGgDM1VodbLDmrm3Vmz6r1GwBYqERubHluTcHW41sH+KGG8ufGcsakjoYX5s3wc7r4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZKuRilwP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZKuRilwP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC46DC4CEDD
	for <ddprobe@lists.linux.dev>; Mon, 16 Dec 2024 17:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734368753;
	bh=OIMrAcQVTjm5gIKbdZBpCGea6bczOZIuKI6WSMpmh/Q=;
	h=To:Subject:From:Date:From;
	b=ZKuRilwPrO0vMDPC1fgGIRj3jQAYSNH+5BFBm4BJWqV2+eVBU3GfZSbPvANLYjVUK
	 lUm3OcNJ0xZLMiyHI3O6l/4xjuUDs2PKpxdIesf3A2c2Rv8e1YyrzN2tXBhI0kuWhY
	 Czw0ynDdtPnjm0xrMXShnbFJSq5H4ni/IngbkXqTQCdb2DMMOKfToPqEHCAWgP7l21
	 +stZrCABYkFRd3oMSWTaTXwFw6lxG4evnyOsT8jZmrLoP+gNMDo4rvaKjqmKGGkSjd
	 vRmvLX3kfiarSu5iGkQb30d/1HzsNh2klPxqBS+DGA9W+1FgrZb4s+Rlo73LRiGEC8
	 fvSrmUhgMHPIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BAA0E7717F
	for <ddprobe@lists.linux.dev>; Mon, 16 Dec 2024 17:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173436875362.9695.14952713670953093001.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ed743b9963c9431667a894929e88373184f0510ffa809f2d4090323f3126df91
Date: Mon, 16 Dec 2024 17:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734368753
