Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E0CC4C74
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 04:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747801194; cv=none; b=mp4N9Xe97+kdoyIX0nA4DUBLrjHWwn0HCiu+21Gnt93V7RhvDaygzKlMzXs/fLv4ss82ORQg6veJTdKYwbTlRMeKK/k8f1wIwzKF+rmQO5QszZ1UhpZb4FNpdyaO1qnFxomhinTyG4Vqn5B/c0z99YYo5edkRNJFAobU+hhGJzs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747801194; c=relaxed/simple;
	bh=K22k6z5rLgCeg6hqX6UTbLSkiJ378qxCZ8yISGnOTfA=;
	h=To:Subject:From:Message-Id:Date; b=fK2NBRzc4MenH1hcQjiFdZuhEr3cmjsLBOTBXMueSeM3dWUhqUpKSbO+2ZN56ZCtM03zjbfXLTDyaTl45cXnJoBQrxFVD5uPgV9is1QS9Yx4KkeYJiLml6NoSxmtUSIOYi9hpDwV464JDpeG4ocjXCnYMj7hLMGDgLtroWbsK4U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TBdoxcFC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TBdoxcFC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3F29C4CEE4
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 04:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747801193;
	bh=K22k6z5rLgCeg6hqX6UTbLSkiJ378qxCZ8yISGnOTfA=;
	h=To:Subject:From:Date:From;
	b=TBdoxcFCGyefbxkRsZs4pKC3aJNWUOegkmmLUZV6qUewh/ugyUo4f4UjVnvtiZ+Gb
	 rrF4k4y0XH/B3SHdl30jzdmG99VCWfBcTTiFi/lx2fQjZP2RO12OfneDHUgf4ZOAlM
	 R/wPdIaoaYjwIJKVFKBCcgJlWVGmJtOIwusRHPPTixGXaaWkQs+5P1+xv5JLczxNxi
	 sa9y3u0Co1GZr3SqkO3X4NKOLjRSK/Zq4MbmEo01a/wr+G1wFHs3wM4fcQxLYDKgW9
	 7UgWuavYAmhvmJ1pRV1AHWOJJv9WMGhq3nLLJ69Rf3etUfS7Bd/GU2B5ZEgVmRXzin
	 loPuxszLbPk7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90B6AC2D0CD
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 04:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174780119358.9049.12521732924269745430.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eee399dcc85f743a7a2bed1d03fd06731877f18ffeaaef8da3affde635ad2b4d
Date: Wed, 21 May 2025 04:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747801193
