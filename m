Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BF3A379C46
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 16:10:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778947834; cv=none; b=HSay6WQ3jB6V2Fvuoznl4rTBKlZmMqgh2A1H1OUjTbDZIooRsMqCL/vQxlwQ2okoc6831CvpV6CHL/FmIAixba9lKXuRHfIai/nMyZUZzoABDYd4aIfCFso2+wV+xhhDJDb0tY2FZcOQOVF2Q4J4KtnKXdZlNUUZiLVXR0G6XGw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778947834; c=relaxed/simple;
	bh=r4LfizeowpbkDuYrZ78yOl75u0TE1FZAcG4uNCzU4Ko=;
	h=To:Subject:From:Message-Id:Date; b=UQlM+K0UhqdHoXP2ojqDl4r1MPaJ0dsjbpLLNnV5yF/c2Wrs5D/XqLVYijxcTrqB2jheIhVhpjuZ6xLQBzBalvB9/lYAV0kcYvmEGkPfbc8qoRkiEfPjF86r3hQ+tLGXqHGzXbgds40MSDm9UCYoi9fA3k4f5jNNHxgBH05cu2Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Zv/AA7to; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Zv/AA7to"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5DF8C19425
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 16:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778947833;
	bh=r4LfizeowpbkDuYrZ78yOl75u0TE1FZAcG4uNCzU4Ko=;
	h=To:Subject:From:Date:From;
	b=Zv/AA7to4FTa+9eaOBPC7yiGvwvANUkr5MwyCdCD6SIqi8oW/TIAjR+O+/tJCNvup
	 4+l2oab93QyPlTaV3AUmtMo7rzquqIeGnKCMGYg3Ze8xs+8X8Vz72SdAogGrpJvf0y
	 aYq66LAM1MZMEYL3VuZOhONSf2uIE+lplnWHE94NrgK19U4i1vQ+sEXMm/dnFxq6Jn
	 J/194XIjZD0egUPVDt5LM8KvXs7OWo45rfEb4ZywUkQpfjxlo/n2tbkI+Tfo2dpdUX
	 ON0JgTBegM58b+m43Ru2c7CNBOgQaH0UT84W3yJAuO8WoIMkMkpjsjhd4Vd8/3Vpaj
	 B1IHQUjC+TZuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B11F4CD4F21
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 16:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177894783369.30798.6269357465371269.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fd29ecbcdf458ecd6428540136fabfd9edbbaf94f6709b04832c364bc918abb3
Date: Sat, 16 May 2026 16:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778947833
