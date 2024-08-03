Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44D6F4A1C
	for <ddprobe@lists.linux.dev>; Sat,  3 Aug 2024 00:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722644754; cv=none; b=GkrmigJ+LNVlC52BamHuqOYKFeqzpFMruYIaYoLo1xG86MPS0gt7UI5jeHkimtW2wFYMaen63daRdlFGjZZq/zQa7/9h6BTDmZ2/AJNeGa/Q3xRlQXqefDR1A34fGU78DtPOkn4vg2AznluqV85Re1+dFUX8XxFs0A1EI3TKVQY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722644754; c=relaxed/simple;
	bh=nNq2WgWSF5SFWwPXK5lX14NoRmPYPnn1wuEAWfK3mEc=;
	h=To:Subject:From:Message-Id:Date; b=uZmJn0Fsx6AU+K2ghVOqj0XLN9je41Am5Spwtc/hfbwTe47h8wMB/ANpkfSacbHnOcXYNZlOcoHtoveMkGjaRDzqNm/nFugSZ1wmLXNJgSZckjhr9W8HTTCrWXImPjN2rvABwt9Xn5M3PdpBWcXq3ppS2K8S2dyuV3gP+xtHbjI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Mf/WEPSL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Mf/WEPSL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDD02C32782
	for <ddprobe@lists.linux.dev>; Sat,  3 Aug 2024 00:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722644753;
	bh=nNq2WgWSF5SFWwPXK5lX14NoRmPYPnn1wuEAWfK3mEc=;
	h=To:Subject:From:Date:From;
	b=Mf/WEPSLxM2f6NE3rQ/TNmb6urVwYFc/jG2hD5ja3c0GjEu4JBJBaBD/mSoIF1P+7
	 n/frt6/JbnwnuaFg2fHMWNrY/5YaBmyaOMoye9nogJsFDht5A31hzbp3dNMSKzwrYy
	 y0V9l+BUPcl6oTuDMwK09Ltexv3Oi5ro4IFVwxqqp7bD5VZGsOkxQhx7pHqcvIRBT7
	 Soky19dUIoNxIHc3r0t/C33QQGxG8HqLo+LPvhoRHS4wOT5Dr52wyNRgi+ZoxTaXy4
	 9YlOhiNmMEV2Ikbftg8H5xKCtWOMcyiOiT+QvfEOZVgQzNCe72pHUeDvig8sz82uRJ
	 3k7Kcr2NTcG3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB0FFC3DA7F
	for <ddprobe@lists.linux.dev>; Sat,  3 Aug 2024 00:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172264475366.2550.16420259049063440730.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: edb4f595f0057a44f0980f52df6d4a39ae4222da081557dcd20f9a593511ef42
Date: Sat, 03 Aug 2024 00:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722644753
