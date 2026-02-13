Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C15835EDA4
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 12:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770984894; cv=none; b=OMj/T7pcRJVylZuU/exaQRFIPCusQifXeuN1UBrF3rNIXU4E3O4Ed4ph1u1yDwXhlek9zV3bmuNifWEhjw2i/FUAWGzR58ugloxmJesA5wMBb13QqP7VqPxqkwcZLlrA1sckqBdnHJuwGD0NKl62aETwJ7an50a0mg/KBaNtnHg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770984894; c=relaxed/simple;
	bh=Y1dcw+qrQtk7q2LMQqn9tu3DYvaidDh/UlEr+/w6onM=;
	h=To:Subject:From:Message-Id:Date; b=nNryFEady2W76sPZuOan9/xqIAm9iO9QcYAmd8QKXe7595CkQvozTrskgO1Cc3nNKdvO7GIgAFAQTCK2mqKnIAQQe1Kde28jz1S4LSwU6ZDNfieoxq++Ct0aHxsARdwvw5gSv1hCbwasXpskpHoRb9VK7mrqNaWcoKYQUmLsZeE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lnNDYdA0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lnNDYdA0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4E5AC16AAE
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 12:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770984893;
	bh=Y1dcw+qrQtk7q2LMQqn9tu3DYvaidDh/UlEr+/w6onM=;
	h=To:Subject:From:Date:From;
	b=lnNDYdA0HLa0hflXe+SzD+3mrY1OoB4AOpT/yrarVln6N3XD/eDnbG9rpZmjQZXSO
	 B7En4pSUA3zCaLQbZfkOWry3hs+dHuSFd2mRWiVA/JnntCpT9l9HCNmY3PDZ98RxQp
	 dZQE9fRkb89AzwUr8tV7n+jEv9+6AANKWYLDcvbjRRT8/2a9k6T7Tm+iltFloZU04H
	 xPHe+hS56gTd3HPa5q3oK0LNea2KoCzT7vwopJaqWs6hJAx0RoQ/rzoXdNbfgSB+lb
	 N8/y/36kC1APnA+i8vexfr/uxZgJxZkmopw/r7li+b7iTrVVqqDJdoIu9OI8FSeznM
	 pttB9aDChPnEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F34DEDF158
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 12:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177098489363.2872.10222194868144272536.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c0e431f254a501d8c73b9ccabfdac0a448f8c1f199efd7a8aa18543c8781fa5e
Date: Fri, 13 Feb 2026 12:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770984893
