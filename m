Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A084C148
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 12:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761999594; cv=none; b=QCiXfd/fPJ9TSgXpmWvYGyd120OuF+z+UpzrYR8sUzNoeao9Q6AMm/AjcVE4ith3gBTNp3U5T7wTDRGeqZgAzAM49r4lHuuIN6jGuY730X11UqlXmTBCPF6fpdIikP4nNHKLjSKy+6jiuLsdRKJGpQWMLVutChoFZvBkSB0VtE8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761999594; c=relaxed/simple;
	bh=mxK/7OFIAJDsCC/Ni/9P9KMZ+kCMoa99B0HAToV9b+0=;
	h=To:Subject:From:Message-Id:Date; b=nN2cqrsXsYywwj8p3ReOCNaCnaZr+Xb5kuxeD99pzATK8Q/1WaIy6O+DP29BUNOtRHUsa9BejFODZHEJui367h9nG3Hk/3Yg44NZ3xoRFHtgzkP5IvdnNkHQJK9XJjDJbUCqGiE4Uus7fJHmCj23h22M5xVUPj+akCZQhY7LIvk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g0t4U8if; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g0t4U8if"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1EC9C4CEF1
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 12:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761999593;
	bh=mxK/7OFIAJDsCC/Ni/9P9KMZ+kCMoa99B0HAToV9b+0=;
	h=To:Subject:From:Date:From;
	b=g0t4U8ifOVR/HlrSBSnYxkfRzc/PS2rhUKYXRVJ9QrGb/u8OSW+lfaWAsXqYa67XX
	 56NEiOr58ksLjMK/s7xsK/pM1L1ju7FV/QDxtbnfivow+Omsjar2+AXBSx/6mjLOsf
	 rqzQrhqQ14bWs/zTB5Mi+IChbdltzVlSga5KATxYWdWBWNu3Fpj51jPo76rxOgkLYw
	 gXmnfGM2GJPnN1UAnR7TkOJbQMAx5ulzQDOFf+CvUTrJUkNkHHuPjwJRVezlAqJM/C
	 R9aO2199JFqKcooXNys8TDgEhattHAuXkibUPTNYzj7A4MsJUw5aa4usVszYbxQrUT
	 ZQkfSJDJK3MLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C32ECCF9F0
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 12:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176199959363.7452.15647241845517166286.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 348465b6ee6d1174079076136b7c5de10a6115e61dfa526f764d4696fcace1a9
Date: Sat, 01 Nov 2025 12:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761999593
