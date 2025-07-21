Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19B682D3206
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 12:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753101594; cv=none; b=OPPo/Uqm++OcBGM4+bTCDzkQ6clGt+wNPpMefsS0pmNXvvxQY4rrF76g12QIMxPH1wtD5egiyHIGc+7gkdOPZ7Id4U4zPoVn/BvpGqFcOHJackflnokuECHqu9rbFo5++uJARiSnWtn1yez/oZrY5pzHQRWYkTQyaiJguLTCCOo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753101594; c=relaxed/simple;
	bh=pRQgmE4WSa7FfcJzFpZWSi0b/qkUjU1f5Nm57p3K6DM=;
	h=To:Subject:From:Message-Id:Date; b=iWrE6cNnRqz2hYdfiEIvfLY41Tn1lMkm2Js9UiLV7XGRQrdfedqvUy4PW9iynZz7cRYyGVouU5U27hiF4vOOU7QH27YuneeI8Rh/OGVJLaT0jFS4UWtFsKoY2HeNN+MgSTr3L2RzJaE0K/5ofUyWWkOZWe1egGuRXWIrkZ7eboI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Wkn/KHDY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Wkn/KHDY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2E29C4CEED
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 12:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753101593;
	bh=pRQgmE4WSa7FfcJzFpZWSi0b/qkUjU1f5Nm57p3K6DM=;
	h=To:Subject:From:Date:From;
	b=Wkn/KHDYS5pfphK24oi3+PvBMOxHTfqvAUqxthE9Yz/4i+MtTqKD+iLj5tw97LcCA
	 oGrwsToA9o8pJ249gTnaX/Ywh/Vfgb53ZOhmwXpwEFeUv5aN/rXPzbJZjOzu3+6XcS
	 C+G9D2Wi+dpdwC+4F8SHRwqQeZ71o6bfW9+e2STzxnCsfh/hYcmvEWfmakZHjWEN27
	 SUuzwShhpD5usM+X7PSJT8o2/RhtpyYKY+nmExqjB/2RiW2N0H5/JGkOk/se+Hh4rk
	 VeYZ9jQnMlmK2AKTzkWqGpjsAljqBfYfwJ/+2ohPODeisV4CCCaSMgYAzUHQBchBJ0
	 jJY3p62SWDcXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 920E4C83F25
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 12:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175310159357.20383.12378400923514960259.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 36387085ca3da45bb03efb0aa03c61ef2e51ac6ea5d02dce303b488d145e48dc
Date: Mon, 21 Jul 2025 12:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753101593
