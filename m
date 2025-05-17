Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 451C21D63F8
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 23:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747526395; cv=none; b=Ozlm07S2JS6nA3OJLBImdiYzfcyuN303g+Ts8W4TNs+ewUxjrCpjq2WFNDATDN52G1Ercmgxl6b6eeqrSrE63sXk4az+Qql3LNbYtYM9OfqjRCeBfhSPaLOD7N43XlYIHlVybbi8dXqZIIr/OsGteeaGmPVudTu2NQp2AB+Fuss=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747526395; c=relaxed/simple;
	bh=2WQ2C7MNO+ilJbkxXujWQZNTKxJz1nE45UOeTFfSwCg=;
	h=To:Subject:From:Message-Id:Date; b=tzQgI55VCSFyZz27KNPm7gDMJMgCWZd78iRFE23CZ1VWLijDsKGLFIUlR/Kt4VUrywvekP1AYU8QLM4T1jqWD1SP/GRZogOMLGyg/9/rxjCl4r/oFgQ5ls96x50Gp61whSjF5ecD55SPvXliurAs9EUkxJ5C85gO8VvDHPDX8bI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NzY8ti2x; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NzY8ti2x"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5B44C4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 23:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747526393;
	bh=2WQ2C7MNO+ilJbkxXujWQZNTKxJz1nE45UOeTFfSwCg=;
	h=To:Subject:From:Date:From;
	b=NzY8ti2xPR8tNZp9HPlFF1FUivFuGzOduhZfo01AcrTrCy7M/ygP7kq8VSBCwwdKa
	 7WcTwCURGPOCIH/1FskGdByHZyosUaGJ2x5IweH5Fm6ZMNVGJQUEuoN11Hr5/fpg7t
	 21TPRT15IofWgTmkeyH8NFVF8kJbPjiz92ikiN9MDP7Hdf2xVT2F5FsiFyVBTFeuKW
	 uMtARM7bBeyVxXIxmY16C3prAbKi/ZN5VwlL58IgQTfyB4Z5gGFsskOrXQjo/rjvah
	 C9F1+6Ck+tkC+bGv6BKe+XG8ZSXpvGCZQGKZXzoOSpKucI3r/hDvS11kKLgX1kDlOX
	 JcJKuGsJTmk+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91614C2D0CD
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 23:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174752639357.18340.11742656288985927728.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3a016556ca29ad2f26b480e8b7af700bfeb66c436bb0b5153d308d12a8b8b40a
Date: Sat, 17 May 2025 23:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747526393
