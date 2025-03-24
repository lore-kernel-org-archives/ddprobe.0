Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54C6525DCE0
	for <ddprobe@lists.linux.dev>; Mon, 24 Mar 2025 10:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742810994; cv=none; b=LBHqz1uYLWzFNAdYKQCXNbp32nsy+quxan6a+yX3FIrIIADimPvBW2dxPo71iXsDLRe5MSvQ3qfpQhxWceghdg/aB2dn7vUzL1sn7W/KwlOXSz2V182f07jbFyyr6JRZKYOwbEajh2vnNIZPWrO/oVy+Psp/gQ1Gzg4e1kFCxK4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742810994; c=relaxed/simple;
	bh=+uQeAqEnJQ/5Ub/OB2IZyGRehzgS0APUa+9kr4G2Q8s=;
	h=To:Subject:From:Message-Id:Date; b=aO7haWDU8QEn9K9qp/Ll1BfMUkDbFc1sNTPoSkAooUefQc8WOj7PMgqcFd60vKR6HGLMb1pwM3rc8T755kh54xlbUgm9y+/rPaIJ+qiBHxSyw0NZC3zRDJH9HcTMof1ScArHghaEE2rrCwsr+AaSJ1jHWkgM3+6FshXS+hljXM0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c8OJj2TE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c8OJj2TE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB9CBC4CEE4
	for <ddprobe@lists.linux.dev>; Mon, 24 Mar 2025 10:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742810993;
	bh=+uQeAqEnJQ/5Ub/OB2IZyGRehzgS0APUa+9kr4G2Q8s=;
	h=To:Subject:From:Date:From;
	b=c8OJj2TEEdVIiLlvqSeQ8EPWBMNAc7+fBaVSbJU0YpZ7dZoGodERnpVy6xRvJfZ8I
	 MJZMWRwzLL6/RqCDYg2+YCR6GnJDkjBE0nW5FGdiIy9Q+RG2G96uT+FrwIyTWpZuvY
	 JAXpeVaEtoVfSIOKV0c2tUEkdXaF9By7p3w/UaxU5Ea1m7b0CkRAoBtdGo/Zl8+/Lb
	 lrupiROa+MQEGbP0H7CbsNL816oQ2l+4h1JKLZcd2/NYDodTy8+shXFdX6WN3qSBnP
	 KDuvBVu1WZgz4K151+5j/WSfnfZH3jOC5i6DqtMLu7DpV2KJs2CVLHA3Nx2r/W0vRP
	 GUAxj4L5wDfew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A413EC36002
	for <ddprobe@lists.linux.dev>; Mon, 24 Mar 2025 10:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174281099366.28648.7370577359915212476.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8a114f3dd427029be754bdfe807d198e783c5d246b3db7734b9a749af5161219
Date: Mon, 24 Mar 2025 10:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742810993
