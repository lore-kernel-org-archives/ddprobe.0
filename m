Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32737154423
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 02:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747450795; cv=none; b=Hqh6ocK/neHyR/T5PnVRvQ8ztj1ywKeBlNXnshKVQsWadZKxsn51D7xeG+yKGxspHU2cGMbLscDiCO4qbtV2cA3nZtBBiPoFf+aHC0wAjNYWbJkiOO9ECFDvzsqPOnvGY2I7bo8+c5TqrxO7qjIyRcoC/lPfbeuGqOrMy3A3Wkw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747450795; c=relaxed/simple;
	bh=r3nNlRWWqoUnfOV4zfAy8M6CmgQ2fEoHiL91kDJhPek=;
	h=To:Subject:From:Message-Id:Date; b=P9m3nCGXGklGbXrjiwvoFiOlrDj2FxCFS07pyEKnhgC50Z9tXCttcBTroN9bnQbNrOD6SD9k55H3iZygvxzUMNaFhnbPcwpUjRLFHY2SNl71g+qlnxIm6QYA2jrxoF4CMN2lxp6JUqzav3yK0T/jpakhs2Rm4/DLgSUOgHfGLgM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G0150+/9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G0150+/9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A46F7C4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 02:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747450793;
	bh=r3nNlRWWqoUnfOV4zfAy8M6CmgQ2fEoHiL91kDJhPek=;
	h=To:Subject:From:Date:From;
	b=G0150+/9O/D67mkYh9useH6EZpDeAveugLA2TfB6ViDK0lWCzNFuU7jon/uWL6VKK
	 SE7BFnoY4oPnnDCe73iIi6558vYvhQeoB3WjO/t9dkAmoYh+ku4GCHppyJNvRY8slL
	 c2H9WLo509vpUaqcXh2vCJl35/h1t3jzOXx4+PNbs9TQ4fsmFszCgx9XD2FYAquM9O
	 z/ANq+nmJRREVkvMcpv8WiWSc4AkuTnnXrDIz5GNEIusIhQQ+A/HaBXy77DKKO+o1b
	 NI5E4nflkk6rwB5hvYvzG/FWn7+ldmff6KipZVGdRoTUAh6hSwwwUQLYrS0QV1mVxb
	 4E6zhN8S7aQ6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94206C3ABD8
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 02:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174745079357.24442.15855482668937491559.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bb621f9b66679f9801bd423616c71d9f1d3186bb2968deb6fc02c6930e760781
Date: Sat, 17 May 2025 02:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747450793
