Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CFD0726281
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 02:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750992593; cv=none; b=g57LDzNZGrbRuz/uPjFODJP9J3dKWttRYg1VvLcdNyUw4Y7IDXFqVkYJZfYPdfIGzPjXtTdUUWqX56eEjLSNEIPvVKFWcnsGKtrJbioS4VybH+CckJMYY3ilSOjF9B4DHWq/VztXIHC9W3FSzlOMtd4fvl5qEXRPpGY2eymlQtg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750992593; c=relaxed/simple;
	bh=6p/hF9Mesq/sVPoYb0xwT7pMx9zimAsuCb+DhUrVU+4=;
	h=To:Subject:From:Message-Id:Date; b=rgLgJ8xdnAQX8m5JZq8VRhFa8GWmH6h2DvBpgDJ40jJ/WftE08dSUklW/tY2UDjwN+FZwsKE0ciY/nivMzRkty3o3OeXDmLAjs5U11/jfUlndil6gDl6TDnpliIiu+MbU+38O7v8+0mRmyBQM2qUsBslITie6pm8ano+y65VDGg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=umIckeIR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="umIckeIR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A64F1C4CEEB
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 02:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750992593;
	bh=6p/hF9Mesq/sVPoYb0xwT7pMx9zimAsuCb+DhUrVU+4=;
	h=To:Subject:From:Date:From;
	b=umIckeIRM8929tnsqL9YuSVLarfUiwtJIZQ+hqWo2Eq+QH8x7CGaJ6O3KHUiXTEqc
	 Az3xWrZLRc07veFgmiyj9N2iDfxSGf/pQxGrDdI2/CEeYf3pXhAMvt1VCjzCZISu2y
	 MrXd4cEWjvWtJMYSh4KssJ0c0Jwm2/R+3paHFqOPr27r3E1dV3BZBlJA2sHsR0Shx7
	 Zr065f7013Cf3CWqkFXO2dIgYEZ2LWPgC3fbrigHrrGkZLwfpVpjdjaAk8Dlou8YuX
	 uBwxjRThtMQxqdGAXOuTCrk1AHKPc1F2IORmQNCVWPHJBKWnLUz0RPaw9S8ThCTKIf
	 zqy/jG4GHEbzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 941B5C7EE31
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 02:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175099259359.30968.14491206733345582427.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8f4b3840009e7214f2d5b386212f6e0ca2a8d70842a42d1865d08ed48941c633
Date: Fri, 27 Jun 2025 02:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750992593
