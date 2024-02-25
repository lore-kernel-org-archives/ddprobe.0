Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F360F79D3
	for <ddprobe@lists.linux.dev>; Sun, 25 Feb 2024 14:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708871897; cv=none; b=U5Wl6vT1sWTradu5isKit1s+EMb+Mc5DV3GaPSK0M04qzpRYBAZ3BuXctsf+D6b4L7tTr+EbgFI1m20NxZgxuZDCkDFKLgfruMd2SZKnkrg/KLJJV4N53SdPWylGzNCOmzm02FVmNuP9a28uzxDIAJkwOelSlvB0eZjrXqQ/sNk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708871897; c=relaxed/simple;
	bh=z6zeu4Xt1uafeYL1d1j/PDrDxq0FqKuDRz5pPwxqb1Q=;
	h=To:Subject:From:Message-Id:Date; b=F4x1WH6mH02uX4L0kt/17NfLlY9YtjZo85CpWYEbZWtEiFo8hfLvTk9QUwKkvlf5rDnCXOXKmobQZPPTsti+68A4NhadjCj+e60jT2XLFKTvC/t7vVbwv9gep1kbAppsjBK55S0iDQ/U+VJtIoe2HAJ3775yy8PFEx6R6DR5DyY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BVA5fYCm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BVA5fYCm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8336FC433F1
	for <ddprobe@lists.linux.dev>; Sun, 25 Feb 2024 14:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708871896;
	bh=z6zeu4Xt1uafeYL1d1j/PDrDxq0FqKuDRz5pPwxqb1Q=;
	h=To:Subject:From:Date:From;
	b=BVA5fYCmxyyUXHR+AE0/2wAYEt6KK9UXZXmusuubW8OHED3fnIbWTvTpz+DpacuNV
	 bv3MPy+TRtFCmCTzB1n2pIQhakPVdEVjtBzJpg5T6N7L8zsHRZ54LMvGMwd2qSpYUb
	 s6g9hOpk5/yahbAJm254IJUnYxcsqVMN0DJAJIvrf3E2thP5jKGiZuBWRT7K9dLa8n
	 7ATTBPSnPMEpxwp4iQ2xXsNQQ6Zw6poVZu44U3jM7/OfmkSYXpf5r7iPsFJpnAxQNE
	 JpXYk7x8NKhxkf57mCpiHgKk2ZvvcN7Ze/hWJ5kXBlOqZREX4r5jlA0c/fUCveiVGR
	 9t6JRQhFSvLFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5FD0FC47DD9
	for <ddprobe@lists.linux.dev>; Sun, 25 Feb 2024 14:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170887189637.8239.13493634551604754785.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3d6c335ad21b1e7bda67ffde3417fe6d56213c9782a30de87b38bc1c7c10c640
Date: Sun, 25 Feb 2024 14:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1708871896
