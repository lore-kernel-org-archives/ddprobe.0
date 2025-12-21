Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C879919CC0C
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 13:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766322833; cv=none; b=Q7ShqCA1mP2A315wWMXRD/5MwN6HlNq2gWqvWICFjjT9QEUVG5tqATbdvzbCzIZIWqx/TwheXcQ65xBUqzFSou9+Xoq4dSTAoC5swAiBPcgYi7c7uZc2TiKDUciE1Abcbsbjoddanjjg8wb918PSXoidVIQawGCIz4ARqrLrf6Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766322833; c=relaxed/simple;
	bh=0hCFY5QXbQxiSc5ZHzUbUuxyS+FWhgVOgsCiGE6AadI=;
	h=To:Subject:From:Message-Id:Date; b=Q55k0k4HNEe4XwRcKW4Tp5ufDcexVKGyBA7nvvDvJLosUBsk99CsR2HVQLhgS3QVFmPbKF0+Kxz+GKPh6IcBhpy+RPhx4KtUUfeNKGd8XYEwL8AGltcJi+lrLMft1g/x5qaJHm2ln0ZeRVn04UcUFYhKFiwPrmAZ0Adn55JJDt4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=srHa2HcE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="srHa2HcE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5B37C4CEFB
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 13:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766322833;
	bh=0hCFY5QXbQxiSc5ZHzUbUuxyS+FWhgVOgsCiGE6AadI=;
	h=To:Subject:From:Date:From;
	b=srHa2HcECe0v1seYKi2911k0yja9vYiwlI/8SoOyeqB9R86aAUGHytyBJsW4jsCe2
	 HuQ7VSzR10EDqTClFIoNnHriW63gChl6jaIazD2POfAUrkH0BsUdhlegmlln0KsQfh
	 QMONknlpzquBZ9KvH7NZf11aJrlKBWxiYDrnGnvj0r2FgGdX/ypAdE2SjR6HfmccH+
	 pz0E4ECCiKOhINFlXvXcFh0A63wWg0J5T9Se0v8MPCzUwxl7Xfb6PmrWVJu5f/4Q6E
	 99Rlwdb0FvF8IJMcyJCGKzqir4m0l8MA5ZvI7QBIN0kEvtqlhb8RWrvG8iGV8+D0+V
	 owTZUsHmR+o9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95073E67482
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 13:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176632283357.13975.5968866742397565791.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 15800d6926603199d63a638a3c37abe6ba8dd3f036cf145ec6a9dbd0e6e6f38b
Date: Sun, 21 Dec 2025 13:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766322833
