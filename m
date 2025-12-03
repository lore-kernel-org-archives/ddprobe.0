Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B496398FA5
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 20:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764792174; cv=none; b=EF91qdqTA3EVEn9QnNij+GF6wvmzMctGgS33/SigI0YljZCDVGI9NGmAV+FxTKA+A18szPdK4JQ+3+GH+jx3AY4HpLpz/1bM2Hdm2FFf1a58WtPn0dD2QZV0+DeulPVk4a+LjbFPBpAdp8+hhWyaY6327Q4Bdc1hYHbA6WdoE5Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764792174; c=relaxed/simple;
	bh=IwQH5WXrWIGCpRoXMwEWy2GVbp9rQQ8ZHoxDoX/OdNs=;
	h=To:Subject:From:Message-Id:Date; b=EE1k1rZkyAZ2eLye89Rn2572NgSIS+D9xafBbeMYAeWeFFhfbUN9WNZKNF407kJYJcjlQwlKjm4wduIZG0hRgNFPXr4qpNuYy9YDBwHH1miBCz30MH/vUTniMxhiWkTl/OsdujLYyonHCbR3U1FZygIW0YgdIIfl2FPl8uF4aIQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G608BRYY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G608BRYY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA4A4C4CEF5
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 20:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764792173;
	bh=IwQH5WXrWIGCpRoXMwEWy2GVbp9rQQ8ZHoxDoX/OdNs=;
	h=To:Subject:From:Date:From;
	b=G608BRYYrYC4SxH5SH6hebUU11WhVk3cAk7e/Nbrj+DwJ+ccVRnTgO+DFlHHLTdTf
	 7V4WZKMRbNDJdMa04MYjp+cTTpC9RkeYjigywwUtd8r/2nifbJtRMZltsV8mEMllbr
	 tPQm7vgNLULDOWKFEGN0J5eptv0whRiqbrPmv+DWG5PimtYtV4Oraol6WqCC2GaCrq
	 /lZUr7NhXMvctm+PMzO6vk7N4GEf1k6YZSNvtdq6wHaeqYE03DCeBlO8BeZJlnKaTB
	 5qz9QHEFAsyPVI78ATmPuHGaMeAiMy5ejKQQOdZ2hyckbnUPhCHP42SrQSnp1ivgJz
	 4r8HILxwh3yZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94032D1BDD6
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 20:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176479217358.5109.12189834933838809304.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a5ea1320053309adc72c52cc78432334d88983be6f0e1fe5bbefd58a834a521b
Date: Wed, 03 Dec 2025 20:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764792173
