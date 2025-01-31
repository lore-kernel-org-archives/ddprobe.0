Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 79EAE819
	for <ddprobe@lists.linux.dev>; Fri, 31 Jan 2025 04:25:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738297554; cv=none; b=Jgm7kT6laOolYiqDlyI0Y2X3wa9xa65eVzm28ggAMdmNgChrZMFtKfJZ40G3IO1VLgdjUL5++kJkuCKz4hg5NdjlOFB8LshH3dpnVmD6lLzACOg44H7Ln/0lzyyPV5FVN9KPpYtcQn2yv5V+mLbc7+ndxfwP3nj8DG9yEZUwyTc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738297554; c=relaxed/simple;
	bh=QCJCU9QwUAgUUO6EX0fS9chrpPZeY/+jAeawC66MKto=;
	h=To:Subject:From:Message-Id:Date; b=Wwi1UI8Xx2Ym8AdG5YYjrWmEep9HtnXN75Kbs8N2pNJXamk3Kos7sO8Rjc+YfV6aNjB8pKXVy3gZrPiTA9uRCfh2IE3sbZtkJsLsNVv/xklWDqnVqklgMLa+q1dH8bPQtoNFHJCjx2EDNH0RqVEdH2lC/pxOt7Kl4ldH/1WCA6o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ljb4UC1G; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ljb4UC1G"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2133C4CED1
	for <ddprobe@lists.linux.dev>; Fri, 31 Jan 2025 04:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738297553;
	bh=QCJCU9QwUAgUUO6EX0fS9chrpPZeY/+jAeawC66MKto=;
	h=To:Subject:From:Date:From;
	b=ljb4UC1GZ4x5Zc66tEsVcXbABFqTTNY9kXLZqGGKwUJGQlOdGA/Gx0skv1O30p3et
	 y7gsKCq7wZl0EHqH0svDK4R+RgTDvg+JGfD2GcI1vNZ9VB2YWAUaIRURfzEjeochdO
	 4jKdco6XgPUmIK17wK/U02PhCAxLZ4al3k3UNWG/Lc++TyYA4HO4MpCVOsibKf15a/
	 L6l61g4AOT5S+YTIs+BlsM1oJflbCC9JGW2YH8qt8jBiE7YCLvYnKU8jjqHrtZCUpb
	 mi7Ud7s8jh6MGpsLIEUpB0cCxVb/nG2dUoIJqhPcZtcb6efqqCN/I0sI2JjuphOqgR
	 oyJ0omudRum1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4304C02190
	for <ddprobe@lists.linux.dev>; Fri, 31 Jan 2025 04:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173829755366.14903.10228578828770416405.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 617c707c9594c82414579fa0449840f22ac96243ee9610c6c6d6f69a628c0971
Date: Fri, 31 Jan 2025 04:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738297553
