Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D0E083A1E98
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 23:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767051233; cv=none; b=t3YepFDtT3q6NLNJ0nAjpitRnDePJzp2c11m75KlSaUasdUEpqTaGpT045okI3KL7Oy4qHZjBCPbJ1MPVjq8Bh/atUNKPuV0m3aKbjHW1rIAQXK5Tlk9CEk6lZuMgRFnP9nc3kBtQJFKq6EQrdO1Sn13Anf1MTyRt2goyaJPh3k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767051233; c=relaxed/simple;
	bh=5CZv1cykc3OIMcJdOrk7q2+OFh63alQAOXApcewiSp4=;
	h=To:Subject:From:Message-Id:Date; b=jV0jL3MPfaZbdLg6fzr8KyzJZqX1SPPMx/aioSgNeZu72RTVT07PmReEK4Bh9TgMJtySjJr9FocBvjZA5fXJe3ZX/55hjRwkVExPnWTR4XpZbQyCCuTIKsKl+gXhiPK8n5b9c+zKDopnlxP0pAtXTrTFjAl+iznhYquLE+Y1YkE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GwinKJ+F; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GwinKJ+F"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A02F6C4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 23:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767051233;
	bh=5CZv1cykc3OIMcJdOrk7q2+OFh63alQAOXApcewiSp4=;
	h=To:Subject:From:Date:From;
	b=GwinKJ+FNCd/jsRjAI/LxM2WkDbdaNLEfXSbvsZk4muvvjsIEK4t+6V5tWgfxkKre
	 aRGR9f/B5pLgoRIYLaGAVsHH/hRSWhN/fzhQfBxwooFKH2gSCM5FBkQO70qdS8qLYz
	 Bz17A5wuG8N92VCD0uy4QbETgx9ttUOas6hhIe/xE2BVIe5+bBm/Qb+9xC6KsWmRDk
	 FEk+glXdsKIQSaFk3Ks0IiViLH79q7voHjsPV5OagziZHEB7TdiFZJf1yob1pMP0Sr
	 Rgta9rSwGPLKQxf9vX2V0/aJ0DT1YGesT7/0O+tECnE3m+qmaaBySNLo1pe12MeIye
	 g3OfvBtvmsg2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91EBAE94102
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 23:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176705123357.640.17595016008370476169.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e412a6b259e4c420890658040d2442b1d875a5085ed1539e1ac9d4b565093236
Date: Mon, 29 Dec 2025 23:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767051233
