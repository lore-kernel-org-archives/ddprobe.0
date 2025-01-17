Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 273D725A640
	for <ddprobe@lists.linux.dev>; Fri, 17 Jan 2025 01:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737075954; cv=none; b=BknfuvMvRb0+kmKColHqzKKqJbMPa2CTrwiCYGvnK/Klhl3lmpOaUGx92hKwZTCdyD3lad2RFN41H+5WkDtUToeSJ89K71eSmLt8yP6D8uvq0z/bOONA3VHIxoFH/SsDyKhMlApEJIFSl2S/e02JgrB3j67xr9pTXkAgdogi+wg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737075954; c=relaxed/simple;
	bh=tFgyWz7iTwxJbMMHPbOXiGOcL08nPw1lCsGw0r8NcoU=;
	h=To:Subject:From:Message-Id:Date; b=V0jg2bVT06JAvz+I59emOtzJGt523fdGNY75E8TrTWHGvC23VuD4X5lZK1rxcaGziKLp3FqlhijNl+VZ7SKgGOTc5uFQwywoJ9Q5eRAqF4cmT0c+4kyd9KLNGB9y9EoHxtwalgEBqdgG+GQWF42OMy7kHaPk87pTZSOkYN63oZk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hJ9qUUWr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hJ9qUUWr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A84D2C4CED6
	for <ddprobe@lists.linux.dev>; Fri, 17 Jan 2025 01:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737075953;
	bh=tFgyWz7iTwxJbMMHPbOXiGOcL08nPw1lCsGw0r8NcoU=;
	h=To:Subject:From:Date:From;
	b=hJ9qUUWrgtzakYbdoKsCP5b9Hn5E+CkTy3ww2+g0sOFVCXWY+bnDCfw1uVbeTo4Fx
	 W6XXWgBb4oqNR0LPgF6aGSSiz/g7svy3bNdXXcyEfxu1OBnDf+Qpb36sL98DtdKyid
	 j9/1ED/vHwD7Uaaq14kicTBm9IAyHKkdxv2mKxV8WiLlf0ggUFEodvRe9meKuxLk85
	 VNOeaqF1z4zTQLOumxxUSFaCKgrlzP5rRmJSDtRderww/LKPZGk2P8k1N/p1dexxFz
	 mWv2oSZMrqBuNn/ENeLlmf46AqekZX9/6OBnH3dxqMidqFDTeKeu+ogHrrmutOkAPa
	 8PzyFQJzsCk2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94B4BC02183
	for <ddprobe@lists.linux.dev>; Fri, 17 Jan 2025 01:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173707595360.24439.8953929492365516043.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 35d064ac3361f072fda4fd5ecba8a3e86c1f9e3b6cd6dea4e22a47c56bd1c329
Date: Fri, 17 Jan 2025 01:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737075953
