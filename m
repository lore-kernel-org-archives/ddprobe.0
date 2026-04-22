Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A1E3F391835
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 02:47:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776826054; cv=none; b=KMQbz8PFd/VG4CrBgK9a60ez4rabPsedN4FGYMNDj9zOWPsuYRtO6rAxprqztFaYemLEeyNq2f/mpTFpk5yqlWqfJ0HwWHM0DTpYt3mOl2ZWmzkGd9wB94Kq5iHznk/LiR92JhKqgQbhD0xlD3vDZW8L+k1NKzVKS4FMXuA3sYM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776826054; c=relaxed/simple;
	bh=2JRATjGkrqOLBP8l47Zy5o8F3Va/8id0K3VVQbgsfoU=;
	h=To:Subject:From:Message-Id:Date; b=NsJJlpb57tnKOhqIedUiKtkCWFkQpWtVdQWCI3qncnrpa8Vmg3hWe79IWfIAyJdd1r5kay7WIW0R4DYoTROUtUrxklIHI4PLy0YXgxk3mFZLwFYecDNcyyeIzlj6sqWLAY3FxSNCdIQcFGXwOLlDPScH+pakuJyOaf61P0YGm6U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tT0GUuZm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tT0GUuZm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC181C2BCB0
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 02:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776826053;
	bh=2JRATjGkrqOLBP8l47Zy5o8F3Va/8id0K3VVQbgsfoU=;
	h=To:Subject:From:Date:From;
	b=tT0GUuZmQoqqvyiy8UleSX87GipV8Mfb6vq9xSwr4Sz2j5QWzpJOgG4tasDOgfRnm
	 UxG41IZq+MiTbQvNEojj6SjP5iH3k3mEKdsXv5NAxJPb4vShUhh+xPtIrCTkCaNM7N
	 ue6N+6FKhZ+E5ynO+4fyp7E8prodbnaRHnMrEErHgpFYEgatgBXZEfiXKhF9HKNwsB
	 nD0XLZGt2pSG0BOJTJSGyaZOp2HjrzHD0wy2cpjYBkMt8lFZ+ugb8BYFMbdG9PPC5s
	 WZv3rNZj3A20iZyb+f3kQVzpf+1o2Yr8tbms8r200OnjdSCF/VGJ763TiRpqnGNiuS
	 LmII2wxjdSXyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9F95F94CA2
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 02:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177682605368.7431.5137224332082165951.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2d171bda690a2be2bf947d86778fe326def232857465d594abd8955ce22567ec
Date: Wed, 22 Apr 2026 02:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776826053
