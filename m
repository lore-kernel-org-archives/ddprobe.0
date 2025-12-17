Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F6DE26290
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 01:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765936434; cv=none; b=jBVV14XmkOnSDZwtPqeg7xxbrYp3+F3UPmltj2lz94D+Uf6kJ4RC8pncTCYiroI50GMG1DdLKxCoRcAlGCTxaiYS9FfhxxSgldQ0Ve8OXXIT6QQIIkCrINF0x8lvby/uYqVfkvo9os+CeDatwNCVolryJUXmHYPi8hoqw4P+KHc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765936434; c=relaxed/simple;
	bh=gJ5vmpnfHY/SR3O0Y+9LVV3nWad8CFFg3yuGr1lYAtI=;
	h=To:Subject:From:Message-Id:Date; b=PWCzkh9XIgtUWnLVHRQV+nkiCEvN5gw8jWlekppIhC96wPMoKbgyQbRmg2CELTgEvN365aR7OCdMAjpeNfN2WUuDKaS6TqkTQ2/SBP1BMCe7J7/OTIccx1cmcaJg5Zbz+2eNQ4hYaUE5ZemjBLhcFEiDv6gVO6Nus2sLEjsmpBo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O5Oj+4Ys; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O5Oj+4Ys"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4E3AC4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 01:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765936433;
	bh=gJ5vmpnfHY/SR3O0Y+9LVV3nWad8CFFg3yuGr1lYAtI=;
	h=To:Subject:From:Date:From;
	b=O5Oj+4YsVT3GGtXSuHTU7QGGc+cILh4Daf1x7+KLt8nqJtuEI4ZITU1DfS9PcxEhx
	 0jgyWZF5kaPLl9qQphdaaGPl6hDuIITcXEFj4+Oy1OQGMTQYyp2pBbrfwiw0mhhI8j
	 GESSUEZ1y3K8Wjtg2GQHbXIXI+HubJDCsJR6mVN9jCk5Eak0bBpBRY/IakRH2WT2dE
	 D0hHwWI/7wHK7xkM6OlBj2OI+unTmJkJTsyZmHBCxHBiGHDpRmRS2Js4O5toH92oGn
	 KKogSgRlPiXzVm7m42PDEkB7lp8D37otVNEbUROmV/nYro0uYS4TeNXuiEoYNi+Mpt
	 OgL4jOKAA3Z4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2EA3D637DF
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 01:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176593643363.27428.7584008561980799583.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 791bdb384b92ffea1ff025b0b0c745008ec110f17ae31ca4ee24613d241f8614
Date: Wed, 17 Dec 2025 01:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765936433
