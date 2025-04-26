Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3796E257427
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 12:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745670595; cv=none; b=YaHOH/sbJAMIimvR8bI3sjPIQTB8F9sxuBxWLmewoWAhdCSvWu8h6gESJRYlrI3/LlwulPOLbjMN0RNKO6DlaSMVOdlMz2FLNNja2FAVYnF410h2AK99+Mu+tCFB3r8RVsBoHKKN/EiEtfkvmsJuZigtqI53+yKopDy9UF9aLFU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745670595; c=relaxed/simple;
	bh=CO7uJPgcOaGULvtjV8iQPJ2mjXnN8i0/TJFWl70Zvko=;
	h=To:Subject:From:Message-Id:Date; b=TBcOoiM1PjizE8VmAPcMxFmDhYY+/rTD51NtWy0cLJqRYXZ2e2rPs3p93Myq1bexUr0q1M8hAdkHG/F2Nq/xxLyYh4o/CGvqY0gBBCuicpLpQM6Oj3boXfcz6z9JPYdv+r/GMWE6rNWFhdiB4+AjxTSfY9q6R9T/Y8uOATTZRc8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jPsVsUSZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jPsVsUSZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3A53C4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 12:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745670593;
	bh=CO7uJPgcOaGULvtjV8iQPJ2mjXnN8i0/TJFWl70Zvko=;
	h=To:Subject:From:Date:From;
	b=jPsVsUSZxlnHFS6xpsJltvAncvErj/wIblZ6gaFhhbpt5uXCP1eKfE/Vbt3CjyZdm
	 ptyHQLUVC07q4Hpqq/l5twSNTwrcCaJdRSUxFgcdgCcFMXPmy8oFD8d0WKwwibvMT0
	 ZJUoKSCFp+4LSDovuFxIArqY3sTi8yMvQBsBVXbJgNeKU4DPLOQ8BeDBjVAPUjAldJ
	 aFy11ZfwtHxu1Lbcu3entAHv0P062lG0aJZ+uILc9XtfRHL6y9I78g7LhwPieqTUoC
	 XnctTCdrgTulNNP7bKYD/3XyZZKE+4l0dlTGco2evBqkqTgzbD7NWtFeOtFtw5cWru
	 rX2ja4vuUhz2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 946BAC369CB
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 12:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174567059358.26653.15698091827296596542.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 55fca45e83e94777a2bc14716c019bcfd39bbd5a882054722314b600bd4d7210
Date: Sat, 26 Apr 2025 12:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745670593
