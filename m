Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D17D235074
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 07:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747812594; cv=none; b=ueA9u95Mg74Cy4z0kk+gBAjC9eOF6XOJPtC0+W5OLIWVSCM3ctOZ/xKz6j83xc7gdjd8gbjgD3qed9+tCWTF32IyIuJVkCczKjMqFHAp2QexkisDu3B8yMlsK577yFd0lSWDlATaOyLfSgx6cR1CjJ5KQkMkgakckCa4Giy5CIs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747812594; c=relaxed/simple;
	bh=gFOrtJeXzduETYG08n5IiTaYzWyvWTOnx7Ak340ZYXs=;
	h=To:Subject:From:Message-Id:Date; b=uPekxHHJ3wr/qpZTEzWqb7Yog40Sex4M4VyA7meRPxBGe0T5IKUvlB+fb7nvXGI5VXQCCZc07nX1awu4+UVezSatFUnydM09RU4yxeWmuF9oYfETiMhpj0Gn0oJZAQ8zK74IXPcQcxznDKB2T0uBn3tzsCSfS0dIlMcb9LyPTs4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g6maRJQU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g6maRJQU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1A15C4CEE4
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 07:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747812593;
	bh=gFOrtJeXzduETYG08n5IiTaYzWyvWTOnx7Ak340ZYXs=;
	h=To:Subject:From:Date:From;
	b=g6maRJQUY1aUTzABCFV/sVFWyyL66s2AXVPfZzaAi+gJyVUqYcPcF+tE4ubdwVRjW
	 mwc51Ed3JdAbmKdKOiua7E7F3czFIE9E55TB7G/I6yV5COi4iRNM2xK8Yg8lUBM+LP
	 NQSC6166TEhUuK356CrEJ33BiuLIEceXYschbBRIQB9Xzd/XQvisqk+Ju3dvcfM4Cv
	 6rWZ5PPHJyuT+pHlBvvC10/qZO5jhKgz8YWt6BryaHIo8Eoy/GkbuH5xCxfgdbAIxG
	 igmaB6oQDFgSi+SiMFt2v53FNXayS8OHd3Vida49O3g+Kwzx2VpgTUC92nktwfOb0R
	 xScyMakzxcS+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90DBDC2D0CD
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 07:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174781259358.5545.855820492169598447.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a05c35aa4033fbfc3f2e6b60736ed2b9e91d32cac2fcefb66c8f3d2d9b863ee
Date: Wed, 21 May 2025 07:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747812593
