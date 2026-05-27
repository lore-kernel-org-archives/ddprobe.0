Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CC802AE8D
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 01:02:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779843754; cv=none; b=PIAjh51YVOvGirAxvZRaCYWnF1OXudtjqKUycg6A05/cGxeA8D/Xj/LOpYV1Dp2EPgDRYO5KcRJT7y/B8PdLaqpzKB5mgZDttQzPjFlN2JEWBBr6V5Q96MZeOUVLhdgKTmzgeH8keSEPpBb/FXqBw5DT37zAz1NQ8PsfqDOTGaw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779843754; c=relaxed/simple;
	bh=oPgAc0oxRFnJXaGQxfGZb0loSW2P0uoOuqKCCzPE5uo=;
	h=To:Subject:From:Message-Id:Date; b=Jibn8A5A7TGRMNMbFZNF2OTktnq2uaSCr7cf5aq7qct2PvIQ0vpmnbblxFLkTotzIX3+fZYyAYebftUJJltQiZL74V5bivxx3TekAqC0gNScZ8sJ7wsgO12i00Zr2OumK5dBseuOkCAUB6+sGRdVk40YLH2yHUiaF8qrD8xNiMs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dKVQo1mH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dKVQo1mH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4A8DC2BCB3
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 01:02:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779843753;
	bh=oPgAc0oxRFnJXaGQxfGZb0loSW2P0uoOuqKCCzPE5uo=;
	h=To:Subject:From:Date:From;
	b=dKVQo1mHcEifWLrAmexz1AGMWON6BknFrpyBuXmaBjOtf9FRzaWl12lzLMrJAvdWm
	 dsPouyN6Ydj/QSn5Ys9z9/pPuIzxz/YzFGhWdweqeUGsaSLsGArfhKbTkFRSztwT3Z
	 b8JUIHJ4fVoBAnI3CXYQaxpwM1dyqIknGdIWqYjP7B1HD2/iCmB/9MymbDjzxToliC
	 AisnrXkyhR0ctZA3qhZn3cPIZCfLupaAozjIiDIP2vDBsWVT8LaMUhrhh8Lt5yv4oq
	 UK/A1viwfTw2t6gNDLz0Xk0wlOys8vNAB9lx8C9zP2OVSM2rs9zVJqznSDbQiIIXw7
	 8yAiXRXJD+u2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4389CD5BD2
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 01:02:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177984375371.16593.13438676664319299029.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 450269b293f8162d7f0a53882406f8bfe683394416c92b4022f7ec08b2685195
Date: Wed, 27 May 2026 01:02:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779843753
