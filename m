Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17CC8BE48
	for <ddprobe@lists.linux.dev>; Sun,  3 Mar 2024 11:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709466497; cv=none; b=R3q1JFA9S2XF08hwP0RXF73omcBJqZLhQaDdiFDnu2FvuQGxmPOLyGriLLm1IHN0NfS0IDvxfPNzkjxisWIdwGzqJ632Wmy9H16eOFEHPJrSVVD4h+nRO8AQJmxAbazzaCoYOdsprRqOPCXRSJeCz5u/7ufNVaXMf97QUUJr08w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709466497; c=relaxed/simple;
	bh=IsRC1zQUy3K2eV3r+0XdTuzWGj7WCQaadyHKCi3UWIw=;
	h=To:Subject:From:Message-Id:Date; b=F4GtGMI7TKjycFQGLzQlyYIZwBcVJIpYIPSKkJgAFyzzoru+ePA97nGCHo3gaOYsA7ggg6gk+rL2GiwhydB0P8iH+8KlA6GiI05bAHIEMztc77whJTc3ewInicrxuvHYHKrQo/QYeOkuV3y1+eIZdDn2ysZhhuFsNfgeckinjlc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GMg8DtNb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GMg8DtNb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7C2EAC433C7
	for <ddprobe@lists.linux.dev>; Sun,  3 Mar 2024 11:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709466496;
	bh=IsRC1zQUy3K2eV3r+0XdTuzWGj7WCQaadyHKCi3UWIw=;
	h=To:Subject:From:Date:From;
	b=GMg8DtNbMBalRbW/e2WYBOxxdgYA+P29aZIOxy+6wFMhMZgIwU5Sq0lXbDyH1M9+I
	 hqVA3HaZI9ekEK4hGozz1TyBxxthx3PmfwmEAGM7TfaeHE1Bh5db+APQHV4g/gjY0E
	 brZXSDOpY6apccCt+az8LLmK3fR4PsOuXgoB0ufG2xW87le5C/yOfbOym/2CuSAQNj
	 3Prm6uvhizLCngKrS/dwqXA3W+pFbekuy4IdCD7rs2ul4WEyvj1zvBEcNYAYgrAFw8
	 bEeQHN4aEcYn4M2nN5ZT5Y2qXyeWL9GnghQCx3CYbn/FTg1KzvIE4fLiiiQpHzD6SD
	 sBUDwypr1DKAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E3BEC48BF6
	for <ddprobe@lists.linux.dev>; Sun,  3 Mar 2024 11:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170946649636.13407.13488247106550502467.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 082dedcdc2b2dea420d12f5056953b56d6fc632bf0d1c755f9b829d0080a8027
Date: Sun, 03 Mar 2024 11:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1709466496
