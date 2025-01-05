Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33BBF1D5179
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 22:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736115354; cv=none; b=RPEcm3nh90K/aKJCV/efRcD/0IJQ6DJ/VfPFxY5j+9L615llM17JMkTx3ICKaVDorRhTpCUnf3Ld16675mCs8266frtGQ5FMeIC8bIkfqDKdiZNQ1GTzjgj7ZVhm26yx7vPYH7HEInu9NHbafNrJva1jOD1vP/HI/Pg7YZSW/pA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736115354; c=relaxed/simple;
	bh=D5PLSPj6VSqx8g6/L0+bRC8qYWcqEwovNuCplz38N5w=;
	h=To:Subject:From:Message-Id:Date; b=ZETkcx8Qxw7u7KM860I+1sZlDS+h9HUbYCP4qFV2/DlSRlmPgCgxYr0oXxyurH88av0fhxlSyDy9R1pLboS/tg36Bh2UbD9cxytTYpexdFlRGxVxJZneBcHuS13pVRHI+G/jerq/ksAOAqkFIj+1qUJp+PY8TAx9OKcMqFg2Qdw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=peKZroGU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="peKZroGU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B145CC4CEE0
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 22:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736115353;
	bh=D5PLSPj6VSqx8g6/L0+bRC8qYWcqEwovNuCplz38N5w=;
	h=To:Subject:From:Date:From;
	b=peKZroGUotcRdekX7/SAKlQ+6Irmpx8bxHmZCzK61xcjXjTV/j6kXQYVsP6T7Iu6k
	 j0ptSXec3XFpAoZU+G6UR6AsM8Ywo8WMWnjCXFV1pjpxn27S61QAfGYHovOzn2KpSS
	 ytJ/OZCqCkOEuKz4kxA8M9dc6BxYPt9QG1zUMBITYGq+SZe/Gpy6vr/pFrNEixljgC
	 mQSFj986xl1HAyVqS/b2cMIlzkcRV9jWLEgb3wVUEUo36qsi5TzKztxHjmP02FqyHm
	 11sYB5T/+Yh+dlzlF2pgSmcC/pxZool4VxOajhYBFuvVFlutJ5V9lXx6WLDpDnoBAr
	 jiFOml3D4j5YA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B2F5E77197
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 22:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173611535359.22199.7978204844251546609.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fbb6105474858b7281ce736d479d11e2c52f6f73f48e3274dd4c98746974af56
Date: Sun, 05 Jan 2025 22:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736115353
