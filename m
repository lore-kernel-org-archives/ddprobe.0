Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E51D5477E
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 16:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786896634; cv=none; b=C71XaO+Qbisu0zpcbXR+/uy5tB0qoM8wlB5Z6vRk9UHNV7CsZ0veB+zOIs/2tmlQ8oCf4UIxb80oBvfsazvMZxNMiahOArhFCs0+/4qBLPuQ/KQmaffEhYjHNNRPFzSREMLY7adgxlVONNmcKZPXwmZ/LfY6ntNYocNTAnFO8Ag=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786896634; c=relaxed/simple;
	bh=tuk96oR2qf2cSx4G49IaMKbAvi8t3W/Mw6f6tzPQ4jE=;
	h=To:Subject:From:Message-Id:Date; b=CyPo9wBMryHlZeKhzJtjrEoW77qeKuSeQktVZohMIHKTeRnTqO+Q8YtEPxEUhLGRZcLeXCCw5DHkVuIypV+0UHGyUNFDV633dIRIgfiwWlkCZ6ooAyR3PTlCqlJurnvPQQMKG8ALAx6gVqAAgfSQE2GGFBd2JZ4iHg6Lx63ifxA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YhXAKAlT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YhXAKAlT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D46C1C2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 16:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786896633;
	bh=tuk96oR2qf2cSx4G49IaMKbAvi8t3W/Mw6f6tzPQ4jE=;
	h=To:Subject:From:Date:From;
	b=YhXAKAlTmzkQjwY154iBxb+2+qcFOWw2xmlU+ObRsC5rTy9JImPpZwR1UfECg3rXR
	 xmbz7ve4/WC+hcUVQWetSVDKXYQX8oEra22bBkT2thf07t2WxkBK+9+iA7mOGlQqMK
	 XJIH3DdcU5/hCHYk5vORynPuXU88jdXeJmYtp+2r57kTAUTkbSUaGnzkN3Ijg0c9Vg
	 Bb0JSyvunIAB4wN3hfMVBpm3vDdjxiS7vJBauJhQT0PkwMyf+fQEPARHcEFzdw+sj+
	 0sNRafoRihBiDmvApJ/WISpIabh4f8LborwI8+dmsM1tJIvxSWqBVRpde79LWsm1D2
	 gnT59ewsrbyfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFA90C5B572
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 16:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178689663369.9321.14734632267994605866.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 77637faecc9856ebd201dd7cd6124383f5385d9b7e00bb685028a5a01e109938
Date: Sun, 16 Aug 2026 16:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786896633
