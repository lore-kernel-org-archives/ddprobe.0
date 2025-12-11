Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A72D27934B
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 07:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765438974; cv=none; b=LkLb6qlQ1jKygAo0qPIXmVSsbx6nSJpREwUV5vudMtf85sQ6P8vjmlmGPvpbWohFsAMwu6k3Cx0QhAcGAYn3IGMxhatmIKBy8xnDUqucUy3i2V+PlWwmM0lJHSi67WTE6IWA2hKncBc4x/I338ukAZEDYY3kC4TBBBtOLtIS9kU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765438974; c=relaxed/simple;
	bh=5Al9npE9+oUmQ6hcnZMhir8/lXW0itGkjLcfdtBd+YY=;
	h=To:Subject:From:Message-Id:Date; b=oqE76WLEgMAZ4Jmn6mqvXk4ugTRo8GGp8S2PeLmgfUV1Xjkdxk7hNOuB8iqPW6F5gYUrAUxoD3E7zrcxdwOPE5YSYzyxF89Kd1bq0kwXFfCJ+PRTVWA1PlsY5Vf9rBNkGobTacms+tdlJ9l9DxQUP6AXgt7IXFdt1J0HeCnXaN0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mHSUBe9C; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mHSUBe9C"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A437FC4CEFB
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 07:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765438973;
	bh=5Al9npE9+oUmQ6hcnZMhir8/lXW0itGkjLcfdtBd+YY=;
	h=To:Subject:From:Date:From;
	b=mHSUBe9CrVFUfC6HCGvd3hg4EWV422n6X08jDr1M5RnL1Q7fEO2ANH0yNUEQUJMEK
	 Q8vsUy/VZ5l+cCjnjLjzVzbKICmSd00FmOexgSI1BiyRVCvtJjR4UUFW7N8suSrE2e
	 Y2rt47+itGe5izYYaKg56jBG9oANS+nz/QD0CCl4WRbz6dDDenqmuzCKveld5LbWXP
	 bnaiT9anvfSktm71Cx/Cabrx8/hlsYcXWzDL6OKDCWkLRqWw8AbLRsHRAqs4kpHV5a
	 qBnqd5GaHGTVHnojzJh6SzTi0NYBhR+zJpAp5wFVXoNidPWhhYafPgPRYP93hZuBki
	 nwqrNELFlh17w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 918A2D3E79D
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 07:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176543897358.15939.10339139950324781160.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 54f127928261553104a05ed291f7c0337a685d28f0d4f86060743c1b007c176a
Date: Thu, 11 Dec 2025 07:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765438973
