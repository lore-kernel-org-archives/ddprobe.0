Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33E2A2144BA
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 04:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746506994; cv=none; b=hI2hqCowaJsVHdKdXAn+c0zyioJXpxjSxCJjRS0XcoUhHDy4Bqvz/qp2GXn46pPFZRoiczS07NaSyaAAWGKgBFe+SDM3rguK11y9Dp33psPyTEubuonirLD5ER3puT6ms2T7adoeIaL/gFYcjWSd2YHTs6BhudNovEukAbFu8Z0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746506994; c=relaxed/simple;
	bh=jTR0LSeKWxZdskYSpaCiFbxPaPg2pxhKW8kCOTZy5e4=;
	h=To:Subject:From:Message-Id:Date; b=lFD7tC1U7JI6Ys4plSfpHJxLAGsWcADFrOrh7mgJJvRU4jcfwi8cYxinOzg/yXDfIRU7MAlBixcTQ1R248oI+bUGblx9DCBPJnfizlB5KPAKstibgRvFRoVf2E/lD/Iu7Ad/FDIQ5y3fCnXjKa/rdhK+QKGmMRI9ke48ooNnWx4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oUYtIlW1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oUYtIlW1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E5F2C4CEEF
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 04:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746506993;
	bh=jTR0LSeKWxZdskYSpaCiFbxPaPg2pxhKW8kCOTZy5e4=;
	h=To:Subject:From:Date:From;
	b=oUYtIlW1OUKCR8VIrvk4PRlgcfIO1ZCYsjtPdhNd6X8uKh2OipUxur6HxNxaXUHjn
	 z4izWIQvBk2ZNqQFZToBft2bsmDls3BmphdF51AG+6KbgKCSgbbd6ffE91CrYITxkF
	 4zGh464aT8DL3KFxMZO/E31CO2iv7POaSgB5/tK8lDa9mqUpv4Z7Bt+FkS8R4aVuG/
	 ensRznChmfEzmyWsmEG/OVFVJTVBlSs21DFh3S8UMmSF7pA2WQEC3RdslWl14A8j8/
	 gjy+NAXZdWx1UN8w9OmmOWF7tfyMDIVS+eImeBiLgxf1dgjFtd3cCUSLMWC5SM+Ar/
	 9SrLuTtCk9YrQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E1FFC3ABBC
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 04:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174650699357.8355.727321619314124819.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1828c4acc6218abee87daffadfeee9693546dc3cbfe5ac3c1079ad15aa301aa0
Date: Tue, 06 May 2025 04:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746506993
