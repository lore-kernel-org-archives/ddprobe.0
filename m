Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10A1819F40B
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 00:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771461294; cv=none; b=DXdlD15egR0m4c8aWer212NNsbgihKsvvy7wX7pu5wbgpZZ5GkyxZr55mwdokQnrd6EToS0tpipvlx6uZwG95fwq7Rk2r0UZcuASWdaNdqgcE8HEtVVQa31fgx7xp+hyUqzASVinbZOczFR6Xe4RFmHv1LYwucPAR22w8D3YQUE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771461294; c=relaxed/simple;
	bh=Be/pw5C3qMHFx52zjzHtlaBipk2+6wInQ97nqt+JqNQ=;
	h=To:Subject:From:Message-Id:Date; b=hcLCAhitRnbZl5SHdfByOh85bysHc0P/IGmMBVRkZSR2E/PqV0wPgggHU8d3GWjoXGNtpn0R/n2WLTn5TZcECRWr5TV1OCPwAGVp4Rcp/MVaRb1IfKAh4rZNkoKSlDEfG/o7cYLdrgBI2jOaABsSlgTyPZ0sAJPVcKpoVg7Ty8Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XL8jGkim; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XL8jGkim"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4512C116D0
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 00:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771461293;
	bh=Be/pw5C3qMHFx52zjzHtlaBipk2+6wInQ97nqt+JqNQ=;
	h=To:Subject:From:Date:From;
	b=XL8jGkimnFldHvXwH5Gt3pqgppLJ90tLWh5dIVE2gRvhPdqreGj8R1lEucJ7QCApk
	 e9YFEWJIcEizxcGTG4Yq/iNpaNTVlVrX5yhwxkj9tHAkoT3Wnzbm/VzhAB32hGID+q
	 vUdqdmciZj8TYssTu4Jr6KB/lxgOBQ0QVPyVGdpeMk5YRQDTtF2MDMCiQd15oKCg8/
	 /P/mBcC30uXe+4AI2A/hNsP/RR7GssYmLwccK+KR+Z4aBj6TxZ7JUewjMoGAKz6LTN
	 BOYUinxNgA6Jhk7K1L1vmXXh3jKATgq0igA81881YdBxqD4kxiM0y9Ut7rq/DlEjb7
	 pi+Be1wRHdmFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97566E9A02C
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 00:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177146129360.27515.15355454259404242173.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e1701c4a5cdaa41041f707496e016e89ddbd9463e1af4199444da927406fe63
Date: Thu, 19 Feb 2026 00:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771461293
