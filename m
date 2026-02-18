Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0EB0434405F
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 17:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771434294; cv=none; b=jF3i+L+0KUbxT3Ai91Bx2I2/Hxmijc2Okc7UdWhLdhL/vFOkwCe8C3rIISarVqbymJzL6Mp1DMS7LAQLhCIRXy5VWdgXkBqbf7tDIGa7ZdLNRD2ClCMrbIcEz9zhxdD7mQjkD1MSYmXnkTSwrILw4mBsDoSDeQXsWG5ArK/n9ZA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771434294; c=relaxed/simple;
	bh=NOkPuaiU9qPAK3TLRUWL/gDJ910xO6oXMwiQSySFP0Y=;
	h=To:Subject:From:Message-Id:Date; b=u0rpCDY1xhVkYmtSlMOsu9nv+0E3BgUu5n45glV4qF2cbiMJ9jdjDZw6HJk/NHN24GjMvjCveLNqER+PShM8I6HArfH0anzAuoeBUt7K6jU0sKGXiUo/mULgeS6xYDasofsXWAmMMULXUhklpiVKkFGe3FfUF0K6Be1Fm6825SQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ByCkQK7Z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ByCkQK7Z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA0E0C116D0
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 17:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771434293;
	bh=NOkPuaiU9qPAK3TLRUWL/gDJ910xO6oXMwiQSySFP0Y=;
	h=To:Subject:From:Date:From;
	b=ByCkQK7ZjiAlMKljXr1DP0Q5TYzmQ9zrf/ph9WzOeMTe+HyjQiAYJ1rxqL9lXkXmp
	 OhEaAtlzTDV82ghOSLUDmmGPJVaDMtD968Aw4kLq1eAT5yt6ffK8CPg5eH00T5co09
	 xrW5cVpgJG+tmalm63r8G3ys8js41Anm9HYh3VQINhyNMgOFFKYtuxmQCy+FlGpTgW
	 6t/vWUWHebxnnaUG0nv3zNXVnmQcNoRgaVGlLMNJ6pbbImu8rj+R8A5wMjnVMb3KHQ
	 b4R9LyjLpfX7FhD3HkMl67AkpzkSl6ScCqmO+p7Pza9k88a2r0GVkv91MvEt4tnZVB
	 eVOgdUdP8UMJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97F5EE9A02C
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 17:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177143429361.28332.6350511445439659238.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c52ec91be855f34b2809538548b06b84667fc40c39c27966400d044d69da9cfb
Date: Wed, 18 Feb 2026 17:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771434293
