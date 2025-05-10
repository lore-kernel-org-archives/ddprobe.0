Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 464BA12D758
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 21:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746911994; cv=none; b=B2oQ20kcKvbc7ojgdFCu+YdMBNdvgKXFzG4NZZAOSXbXdR5CmCmEGbEMvm6mBLab4TDWprxiJDrlzvYU/tyhcnTpxi8TTmL4hA6r25pUcS7P+ea1sofCSNLE7F7zQphI+v5ECH9GMbnuxFqukjqcvaAEsIrn6QszhyF4xWWw03Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746911994; c=relaxed/simple;
	bh=QNzk6ruw/NiQdjadZ3AcYdze/YA3CKvxVPT4DMrj4Ao=;
	h=To:Subject:From:Message-Id:Date; b=CFY5yQrC1TqFC5S4SpNKrZrG5AQTAaGGn3wUbRk1FlrFDPY0F+qAr3wy36JzqmWwC7Er3dTpg0hJMh12EuKf2C9e6wXqRStaP5DGzLpoh9E/GkCxRUpFBGg5nyjHlfvwUJj+eW3vtSjbusA6KfibKipdMGBgMYGBnIkPo75y1o8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U+Cas2EN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U+Cas2EN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7CAFC4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 21:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746911993;
	bh=QNzk6ruw/NiQdjadZ3AcYdze/YA3CKvxVPT4DMrj4Ao=;
	h=To:Subject:From:Date:From;
	b=U+Cas2ENGZPZerar+2yvi/0dKtNJqL0Bj/w8HhNOmDr989xZ2pyYHB3BKqe3ZiOPk
	 lEqlIgbAdCD72r42tMe/qYJWx8+vjvRzXbweU2BvzPvXeUJF/Gkvjru6JHspTl4bNX
	 FdsZ0bd+J0HjwZYDGTBH+bWRbr2kIQW7jUjlqkHnpcAaV+j5t1eoLa+wmhH4hSCWkn
	 RbWnISDyVfW/52Jn0vdDUGLpQTdZKK6jscbIF+Pnc6/wyLdkypx5rlOgUZ+/SNiGiL
	 Qn6U/dfVhG2wG/OqKherPuC4+iRFaBXbFUMJsIEA/ZUGt8AdRQKXKxfBKQACituUMb
	 qMlbkZHXvJ60w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94CEAC3ABC9
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 21:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174691199357.20723.6762198352766667425.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: caeb2e8017d1394fa4b0b147b1f19bb669c48121677730bdad95b68d2ec3ab53
Date: Sat, 10 May 2025 21:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746911993
