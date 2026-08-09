Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41EFB1DF26E
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 15:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786289434; cv=none; b=bt0UlOaqziSnDGmS3Tab2NzLY+XhSf84I37uzkKGi4F5f9TPln0wY4hVUGADWL1co8/alCdMoWJUwn7T07M5ci0nNwBoIFuu/3JA73fPZydE6H/rET+gCYFFWY4lL4eVN7nPYggdrh4sD+5XtGHbzScW9uD/RxZjfQxHIt6mqww=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786289434; c=relaxed/simple;
	bh=iwp+MbArRgmyKtUi7EY/KXvrVAZZ8dBDyhsPOZp/J78=;
	h=To:Subject:From:Message-Id:Date; b=CjysIaoLQAcjrHyI34N1QuZzXujEdDTwt9nECFg3/3c4W2/e4NVqEWlOn1eSY+mraoJTFXk7ljS7kBsXHLYD4ZSAw5zj1AC5BVlAISuT0yBkIU1bmUCgfTdIi0/duIhImt1Y1iRTpUMowoUUu5PPFKy4ZF4dOd1UUGXpY34amzM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gU1LaAwq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gU1LaAwq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D31C6C2BCB9
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 15:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786289433;
	bh=iwp+MbArRgmyKtUi7EY/KXvrVAZZ8dBDyhsPOZp/J78=;
	h=To:Subject:From:Date:From;
	b=gU1LaAwqt4gvyftohuurQkkgsQGmJfM0DDvTZvl1OYZEGlDdzYtRtPZY9kJSJA7p5
	 6v5RmWWAe/VOLvVqymlIprvI59U9EyWUYivLcnSE6xTCNDnmr+Lt0mg5fdPf/gm39m
	 H4H/k2OsDT7u6cDaU1pL70WJ2RDDcdyZUuSMa5j1oWxEHEDwqZiGBc8UokxKD+ZGDM
	 7wG+fZU6QfsmIoo4xDufqMHrqOSxSQgsq5dYWFGfzKwbGgzZHCkmRbvEbWSuKwHhOh
	 0AlEgsKXK/Ch/iSWTgmkTvr39U8wRYnzOiIheUyH7QLjLgBV+QoeC/I4tQeYmWOiPB
	 SNTOBZf/DpHMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD5B6C5AD4E
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 15:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178628943370.25195.10118492493363898017.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6273669535af99df7cbb470460ec0224813170a3a9471a390126de8faaeb33a5
Date: Sun, 09 Aug 2026 15:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786289433
