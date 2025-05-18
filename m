Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 458B77E0E8
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 10:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747565994; cv=none; b=jjgseRYuML7iLaFZ74uDnZ4qPR9jWnLvNWTbEvUoU++F7/6fjuqcOs7tvYM6jy+fjOXT/eDzDEztHDg/UeVAzWIfnk2M7xLW51P6w6ujdlFb7+6qLDmEfjLkt4SibjEvk51cO9cCLdJ4Nj+CK6rKMcceyf8Nwu3KTVjZs5SBKCg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747565994; c=relaxed/simple;
	bh=UrhNeeVHUEGMwk2w2H5BK8Xn/t075hiRbFlclyOP99c=;
	h=To:Subject:From:Message-Id:Date; b=rv6/dz0g1N4EQzvOrtzyvS+SrDSaK8CT1idh+FiiSyjZwTuKwB9xLySn9e2T1D6zfaAEagvvafJPJauDOlccn4IY1/5sjAjMdF06CYKhw01Z3KZ2YqTFdTwuENxp69zm73h6mWRhhFUHAEcYgb5hPXqFBBTEsqoLVvc6NZR7hPY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tXrjOwDG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tXrjOwDG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A66B4C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 10:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747565993;
	bh=UrhNeeVHUEGMwk2w2H5BK8Xn/t075hiRbFlclyOP99c=;
	h=To:Subject:From:Date:From;
	b=tXrjOwDGhFK+17mqBIs6YgtvOUNEn7HoFr4xosKdmUBFqQve4VWa4iguOaQQrQC9X
	 0vYvFKa7oISJYxSp2s+oI3TOrv/39IAEVy/U5d+cSrG/10ahtnKomjj7wXtE6zQB8a
	 y7tlSW8Rh+FExzVaknVHQyA7Ky4GIiwo5CZliIB0427iWLTGVC/O6YVVaUC0M4L/Ai
	 TdW4b5jPMot6ExN386+PD6rU/P3QnI2wfeecFKgA2XY1bdBON089OdF/UnM/8qj5Mm
	 87TTUI+qHtt3rfeVkH45pwZHh8rFv3RoFUBWaBoB1CyTJU8Q+XGEOrGj/JUB7CUoNh
	 SiCjDbmyeTr4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91B4AC3ABD8
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 10:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174756599357.32547.15666295546983054365.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d566971b7d4d5b6e34da895843a1159086b3093f545a101fa73519546e857c6d
Date: Sun, 18 May 2025 10:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747565993
