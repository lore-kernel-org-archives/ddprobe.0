Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12BCA26B756
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 15:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772118894; cv=none; b=TjSLmblPNahvnxshl33paD/0UXcCWlrwj228glTpA60L9gANrjJ2uVqeB+ZJJaDEbXeq14pGQ1av1hF/UK2oBy7fqKdhojaS3ZRfVC2YIXPTtu3eTEVymqZtyHhuE1WKcmEYoiu2mQMknp5hrWycu9mYV3ZV1d9P1yLqIqfNPBk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772118894; c=relaxed/simple;
	bh=L6TXGQASkrGWUsbTyJSS3ForNcQ13u6JdCIY3Mjs/eA=;
	h=To:Subject:From:Message-Id:Date; b=BoTHenNAMPtNk0h0v2ITNDR8jrS7xlQ7aFR3ziGA1jReELj+FXJOjkMgnA/gsTcSNDMfBtpJtZV3FbjFI4nvQXinzay0PS05EWufPqEDbzrF5CK8TNLq9Y35Dwm9vhytE57k6JHa7kqwNRIRpfGQtbrGX3ud8i9mZcIqLiUcdnY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bFVbJ7Ut; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bFVbJ7Ut"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA77FC116C6
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 15:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772118893;
	bh=L6TXGQASkrGWUsbTyJSS3ForNcQ13u6JdCIY3Mjs/eA=;
	h=To:Subject:From:Date:From;
	b=bFVbJ7Utq1nG5tB7+hnunXHU+mAuJb2Yr3nKyqgeXEVCMCXmEYS0mg2/r+rQgrFKJ
	 90+/BWNHwtQOaw/a7BKtqYwWY6MNryZLCqaFYkwdIe5/FY7TEFdhJ2VpfBXfmi4SA7
	 H5NjSUE0m2/TYGz04Fls1TzZMfQpQkr8r8L56lYXow5N512Mxcjnc9puYM4dwWnAd3
	 rGBxiSTtUPq5kIzlHeO1gE/lqz5Ljvzr6/Ggy7U+xtZEVS8g5gR5klLVL5EeJOd7+Y
	 PE2qNZVIDvZcPZGxeXjcRPrZbiYzT/ZUGpwVAmVw7AU8FF5WyaoUTjVL4EhqnnGrzU
	 nIB/VJQBIOOGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93A86FD8FC3
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 15:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177211889359.21405.16600279585179169843.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c70b2675b83ec66f3e17285675cc2171e2cf956d47969ec302214682e46a5097
Date: Thu, 26 Feb 2026 15:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772118893
