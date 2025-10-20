Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A7A0184
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 14:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760969994; cv=none; b=OMZ2QjsS1U/37RXK4hGlurPH5RNXyTzyLMvY26nbxKMAG8kwtOFG9fsCrGzIa6cX8uDIL3NlxSX397HIEZKppqKKtOp1SvLygNLKummD5hxYbWOGRTz2zahhUCEBJ4gDxNsAkgVNvDRe+YBxE+9lEAjh3Q3cI4DZ7/rMOiJSc9w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760969994; c=relaxed/simple;
	bh=9wXei/EyAf8N9gEvQiWC29L5fyOLF98ZBHzb5Ub08bo=;
	h=To:Subject:From:Message-Id:Date; b=i1SRfg8i1wStd0CEi4tMiG8jap6ZDPCSUJkPpuLlJfuu5xh5TEjZScwWV1cyjJuYSw4VEK/F1nTDLZFU+X83awd584We97QFsyqt6yVRc6uf0o/DFdirxt6kJZJK/u4zmW01PLDNmBt18t8uyht2P6gMgMJP6RcCNhfoqeWQvUY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DfAkuDp7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DfAkuDp7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A22B7C4CEF9
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 14:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760969993;
	bh=9wXei/EyAf8N9gEvQiWC29L5fyOLF98ZBHzb5Ub08bo=;
	h=To:Subject:From:Date:From;
	b=DfAkuDp7bFLpHaeahQ4PlTKLqQz4UFNT2NAg2uDUug63kApn+BQkNbf7FoFBCQCbo
	 Yl7T5eQzoeKlxPLUiCA0fFGnLLHsBNTxCFwvdpbTK4L4s30PMsbo0TpDmAzuXODxKT
	 FcrjOtvr2KiywcU9jzXaoIPlZoqqTfFuwv9iZSqjBfhkbpHxe8C8L66MxuRIY3Hcbh
	 ew2LSMm2N0OtqaorCTs6crWXXSRZ7tpQ0ALzsBSpQN8lbgMa53M7ftqg6gkJCdWWa6
	 3H1uPbmk5vAU70RcqnT1d5YNbWY72z+lcF2l0eQrO2omUX3+VvRLh4gQ/Z6ALkrO2n
	 yl5OFpSI4M7Eg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90A95CCD199
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 14:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176096999358.26380.5370141176241015182.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 611dfecbc260fd9eea1b795c7693de355eee69a2c674a16177edc752ed598f84
Date: Mon, 20 Oct 2025 14:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760969993
