Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F2D283093B8
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 09:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761213594; cv=none; b=F40W40QKzwhN4NHcyUyil2I6tcBZSUjwU26boZWqO0ema7QBXruYPrdojBMKDzMSYILXHI3wYnB6sbAQbDooVB9SlsDo6mM1XMZnhHe/PYawLetVWemY739y1zSl1nH26jArir3Pi/hAITNGnLv2fL0+cGTIAwjesHmGlJFw3d8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761213594; c=relaxed/simple;
	bh=7c+2+84xqzaWXi+IUAGiF/zxGqPuHxuFZnttaDopZEA=;
	h=To:Subject:From:Message-Id:Date; b=ESADJfK4Jmuj/6Du/u1dmPGAbG3LUbr4m/2sN6sdWMy9MfQfu4IdX0l61ElYHW+uVqTlGkfyAsVJ+bzQyOqs/xQMsiLykSc98oiiqgxEU2gIzBifgwjGQhln5nNKlvh3Ba+iicYX+poRbLhP9cXMGJ8VR+Sl8hLTwDW9TrzXftw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SjCgTSZy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SjCgTSZy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DE40C4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 09:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761213593;
	bh=7c+2+84xqzaWXi+IUAGiF/zxGqPuHxuFZnttaDopZEA=;
	h=To:Subject:From:Date:From;
	b=SjCgTSZyBwNzm5tFt+EjfNdOJr9RG5zpMkM29dudXHkury6EbsxOUVTSzbjjnfiu1
	 4WLNcP+wMv8dB0NNXJFaIpyeLd8LqMFfoQBL8oz5ocqg14Uz/dNkZkUkiurD5QsL2H
	 9kRDlbaiQEUkZZmrQYEwHgfRKVNweRitOXDGefdfCCh4pl31DKA8UIQlc3PvpGj/4X
	 BcGFxuMT3tEkTK0tth+XcKVpOUSlCHcXcvGC6aPT6Uwe9mAITFwzypTG7ZuMGP8Vro
	 WMpemivVX4f7c0qUeaGPF6cFJ0rkMSZvbL/ymGV5uojf3nHQZWVraTjez15pvnOyPE
	 +Ln4j1DWzjReA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F109CCD193
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 09:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176121359357.16184.174681894932235752.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 38798950546fe78e043df6e8f19ba80fffedbeb192553ea9cca2cf0ab27019b4
Date: Thu, 23 Oct 2025 09:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761213593
