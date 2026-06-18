Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5579A2475E3
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 08:56:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781772994; cv=none; b=LfkJczzWtsUoF59bQ1bJwqlBCfCO2z4GS2jeRBv1pkG85fkIFO4fwhfwCcECTNDYKUQz8Kh2cd/aaSb3A8vQjrAYgL2aLNBdv7t8LhJlc9cD+QJY4APcvXe+d9yZTeEBK7e0FlyirVtydVVbHIHWqtLvHNlCrzPmjCq29BxVA0c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781772994; c=relaxed/simple;
	bh=hdh+Ep6Inih+6j4CeVnerKbc/58X4peWdp3k5diWxFs=;
	h=To:Subject:From:Message-Id:Date; b=DIV+5d4IOj3rGCZHalM8Yc/aKewNFdkK93wdfhYx4iHOtbtAckt/FRa3F/apE9Tu/THAF3No/GG0AbGDt/9ARqW5jPHegcuxkmkB2me+cdPMLa5IhJ/+DWyISuNSZa5AizyDwnIypYQA9IQLBGQYfFYDrwpZU0Uv+MPoFDB3BOY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iCm/1Xbt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iCm/1Xbt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E5B44C2BCB0
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 08:56:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781772993;
	bh=hdh+Ep6Inih+6j4CeVnerKbc/58X4peWdp3k5diWxFs=;
	h=To:Subject:From:Date:From;
	b=iCm/1XbtbKP/K2s9VqvpGK3vanngdmJ5ocnhEHaGizFDU/9SgrrqieRYkH5mgwgZZ
	 MS1xeJYUcFHSDxlxN712uKkEaYPTiuTaQBzz5ajDnuWR0PwCsGe3jSHAHIFb1kUn1m
	 SI4eR9fHZdLL+XVxSCjN1i0JNFmLirjPTrQsbWp1wHGOn7UmPT/g+ESdnhQanAES0A
	 vQsE9wuafgNpecSb4V09SGOwlE3IyAHrK641TN7eJIk/9BGcyvTEFX9sG+f5F9YYUD
	 /BKoPdwQPuXQr+orDLLOjeBUN7L9MYxay4tW1ZieWzqO5rJ7H5VRh0TBqm0CcWQMgC
	 UYixR+d4ewSQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0B1CCD98E2
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 08:56:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178177299373.27460.10329273058566485672.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 429f2645f0b2fdc81211afd76dd072899de574c1a3c6a3b44bfcdfbbc1104cc4
Date: Thu, 18 Jun 2026 08:56:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781772993
