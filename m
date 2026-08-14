Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE8613D9549
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 02:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786675234; cv=none; b=qeYV9+lfzewJ0HXFKQbeFNuiaNf909L7H/KkPYn1MiEdCeCITcydbf20Imwl7STPKmkUyTGOXXpCTjgBwWYGyZ3YqT+xjaHN1JZpBYP4ZBkV6MXYK+77AqF3xFWDKtPRg0FliOMhEOGfFvcvq05QzD+ebtnOBNDr3tMnZxWPmfA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786675234; c=relaxed/simple;
	bh=/fEoHqszw1jwK2KvGqfbhPiXRgH/fT8QibfYQT/kKkI=;
	h=To:Subject:From:Message-Id:Date; b=JwHyzX4cVR09rRwhtdj9MuGiXzoivUErv6rrENq9I+iu3rytUBOQhRJcYj/bVZi4aq6kE7r8810rXFJnoXR1B+V9eCitLPxwDwYyZgynwkxETaIJGqErC1adnyn3fizHYxKSEDMbjpjvbcoql5UzmVzzeDYNoylViItSQt0BTw0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=APDP7uAj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="APDP7uAj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD9A7C19425
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 02:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786675233;
	bh=/fEoHqszw1jwK2KvGqfbhPiXRgH/fT8QibfYQT/kKkI=;
	h=To:Subject:From:Date:From;
	b=APDP7uAjaXbdM/iFHvyzyhQ8zUK2GGYs4kz+fealBp4kqKvL+jZy/7C/YGvPNlnp7
	 QUb27WEAi/FbC+01YFejwj8uWwifEaJ1Z/f7pXy8cCCGWD9S9CfUYNyrO/bnwDoRK8
	 J1U8HQ6xgdlLO9YMBV2yPdvzTAX7XOsxOUlzcYkGOn0bCEaqZI3BANETNlRK6TDFJs
	 y/C8awte0z8spDUUdtbPcCf9NXU3bR37mK5GttSnxU6CKR2WJwSwz1v69x2FujIQfe
	 x3OiXm57B45pq/F4b5+Vit2feqMjEUSBHFte0nppKnakffiS4VFZ0mtnnYMopcYhXD
	 zxoBa1gzzOfbA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7E50C5DF66
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 02:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178667523368.15525.17053798264480695402.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: afe164a77cfd31937c688c1ae0c987a123f0ebcaf1811dfab49e16246acb2206
Date: Fri, 14 Aug 2026 02:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786675233
