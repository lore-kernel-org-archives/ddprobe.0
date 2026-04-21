Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26A2C1E633C
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 04:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776747454; cv=none; b=JQ5C+p7Wlau7OtqLTzSuis8CF7NK1XpZWCIjyNJCEsBMLZ82D2PdXXt3qgbfn1T55plTB9TpqtjqQNxe8pzgX47znkcTH2ZLK4Pa3dWyhmzMw5wIgUZmmB4jayx5fuGDzzoZH49vUE6E090/EW9I4GMSmWq8Yym8Q9JXVUdKeZc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776747454; c=relaxed/simple;
	bh=OVVQ99iBcisOdRu4kJfryuaJToH0Id9xwUVMsx7jP94=;
	h=To:Subject:From:Message-Id:Date; b=SnEkkHL6OTEwtdvniBkSt1EeqE/xxS1MaXaU2FlEJIHh8whgR89W6nG+8WimrksLl5kxXCgLJMgd6MyIXT5mswGmVrI0o7h7BA/nPQhHMFL7ROhB9hbakF+RSNmbYBgrv30uG1b3yjHmunTfZ8H7YIUcHOz2SnyHczZK/pCzkbs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FlzWJ+Lj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FlzWJ+Lj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8474C2BCB0
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 04:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776747453;
	bh=OVVQ99iBcisOdRu4kJfryuaJToH0Id9xwUVMsx7jP94=;
	h=To:Subject:From:Date:From;
	b=FlzWJ+LjppHJ+C0rdYZjSechcUbcNc4xskv+j4x1K0s3TLIT3lDx4XRUTQGzm/8PG
	 aqCITgqG9Aif7euC0xHAYYz1x1e7QrHzGKIItmh1WNJijZ+ntEc7dgPrIeo8RK1opk
	 bOp1Jum9S6QOk0aLVST0a9o+jawu6PqU6E09I2JpllVtyP7VzUsaWF4mOVpDtjfAmt
	 KZONIu73PzcIXkBwFc0uFfMaK1Xjy2c0t6JQy1XSOCwWjnWExlA263DPN2fTk/f+Us
	 AjrwoYiOqaRfi7vjF+MmOVmj1XWXiEtaU/H41Eu6c+CgKqjM4ngOt7xu3vBZyuqmUC
	 10U9a7UgzvQrw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A96FCEA71A4
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 04:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177674745368.8831.7462948249900128720.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf6a50887fceab9c213c2f070937b8ceb59a4e781b1f1096f872c4a8959d30e8
Date: Tue, 21 Apr 2026 04:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776747453
