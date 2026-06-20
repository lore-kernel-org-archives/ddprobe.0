Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4213B175A66
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 09:06:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781946394; cv=none; b=F0W+vm8gPuZX+WlA+vDf9IWAfaZdlh4GyZfOgVCRpfKRp2NOaR0jz2obGqjxXs6aQap+gSjhUtjcCdBv9vlT6+jecHW7m9Eot9tknH5RwASzc3qUTd+6PrVpnIRVNxngse+0E7TTFQawC4va0MOfmlI6ANKkkRBNyirRTcgx1UM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781946394; c=relaxed/simple;
	bh=i6ftaZ113t4OucfmZdUE+DWh3mODwCqfgumOJmALRJw=;
	h=To:Subject:From:Message-Id:Date; b=PTOs5ieIyoyY7/WkxHAXlljBkWgbNxC29KGgPLhtkDr37FpsDavhSaU0xV3vB8I5p8i5eTe9fJBnzpq+sfwLb9seFeQD9AO3LUALTiXraC1xP0HKQoIvB3TT0sZ7astvDKRgdHdLMUF5W/g6Vn0EMrrXVdMH87nZ1PN6ynqY5eo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ywh3RjGm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ywh3RjGm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E194FC2BCB0
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 09:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781946393;
	bh=i6ftaZ113t4OucfmZdUE+DWh3mODwCqfgumOJmALRJw=;
	h=To:Subject:From:Date:From;
	b=Ywh3RjGmShP6PIv3MgJGExhefK/CW4PiLLQtWuVVT77UiZkhIai6e4gx2k2ehsG7O
	 7naA3NWx9w10Ox42BNPW3CMdHlB81NYSxjgE8opdUaaBkb6gI6dv85R273aITDl9pu
	 7l9/eXGdTpVpq88pZ0IfI7w9B0uwhK913kjZlW5kKT4ipNG66hjIzVghzWKk6y3ewA
	 iLuTVPsSxld1yH8MO0aJrL19eCM2vMLPnCm7su4mraRblHnQufNRvmhhXm0tqLqIcp
	 gFMLBkJd8JaaWTHX7xT4LSdncqHEz7nReznV97gU5hTirn/JCTZhSZrQ3R9JcsjF8z
	 SeGFmK+AOAR/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C15BFCD98E4
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 09:06:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178194639374.15441.8072807695006634373.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f79ed53101dcfef4b422ad0337f373c79ce0d2ec07303482d1309b9c3e9b6b9d
Date: Sat, 20 Jun 2026 09:06:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781946393
