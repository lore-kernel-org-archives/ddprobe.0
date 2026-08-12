Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E1173314AE
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 07:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786518034; cv=none; b=Zu6x75SF1noRmzynqf3nMGuGR0fJIBW8uvz2FdikgVZ8VW3+klMrcUSkd5ENNrrXXe0SkJAUS8a1DzRc8UOWqkb0uQIiS6tBxjsq9yuOrsDCd96l8Md8iuCWACY53aROLePGux9MuEI4Xg+5COCpcKceVbGQUr6ox1roP+qs7lY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786518034; c=relaxed/simple;
	bh=0rLzpfjOGOl4UMBHi4GpvDwXTjSw7OFH3cjN9ueIHho=;
	h=To:Subject:From:Message-Id:Date; b=HZsjNz+49UnB4ujZqk+Bw5ryaD7NJ0hxjb7Ivhlaq+G895JXTOa0nfLnhOiBjKwf2L2eWK8Rrn9O9xfcTtv3J4o0YzJRRUB7aEBjbsU4Un5o43V/s5CxGOaQHTq9kwSYcQ2n/nx2g+VOhUv3YRGqHtOaqofviPZ2FfqJqcdmGDE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IfOmGa3Q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IfOmGa3Q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA476C2BCF4
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 07:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786518033;
	bh=0rLzpfjOGOl4UMBHi4GpvDwXTjSw7OFH3cjN9ueIHho=;
	h=To:Subject:From:Date:From;
	b=IfOmGa3QasLZNP1fnyuiaoZpQBGPEEMplFMAJBCD6rLrHNyZnTivK0lX9KbYC6X9W
	 ex4NOs6lS2FsLTW1RaLu+ozyZGmUmv+678PtUzuob/MmmDamPj7Qho9kjCkCe//4M6
	 Lmmlr26SoO6eECsvky742saOzid8WJjvCaNscPyj41GIHLOe+MCX+af3GF7Jj6CI0T
	 J1T0VHqoUQhIVCzG9gnp+c3OKoKC9pwV3qSA+x52/RALVS3InVTfQVF88XUukFqfyT
	 9n2hbGRD+61mkmeHWbf7vVivKngw2SVWf2MUGANPo2EdYFW3zxbBqxR6PI1iNjTOPu
	 0PcPx8TQcOcVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8B18C5B567
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 07:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178651803368.24797.12100381285240376927.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4fcf6d4fe67d4cb9e42b313bb14061000a130580605a3513467a8755b330c02e
Date: Wed, 12 Aug 2026 07:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786518033
