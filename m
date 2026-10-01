Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5DDDA3A5E98
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 15:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790869834; cv=none; b=QLJr7mWANPtufmJWhd7Nz8npNFmLUA8KDs7Zcx/6VGmsrjOYv8F4FCFnuOdMJsBsG/X2v9M7CMMg8QIv5tUbV+yiiV7Krp4+/1Q+vzeGwK/6auf2pYiHbKdue6ShQ+EAbTXLhZUFtbmuhqV476tJp//j7+xWBgwJjubbnIYaJtM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790869834; c=relaxed/simple;
	bh=hPQmXFx2B6MCt1CO1XMI+hOAes/WBJ1n+LgBJ1h5v30=;
	h=To:Subject:From:Message-Id:Date; b=t6Sa91oH0EOXpVfxc+TQ9RIkNuGBYGLKSfDdbn8SSCDI4UQgYLsAQQLUjsK/omTud67qiiMw6Gs7S6KNIVmluE1mjDXEe+SHPSJ3MzEqj2EW8/shwk0v39DXyK1EFM+6GNk0NUtmpWzw2ARxElESL/dJomYRDi3u0B+DlCAgYZE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c8CtbSd2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c8CtbSd2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4F7DC2BCC7
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 15:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790869833;
	bh=hPQmXFx2B6MCt1CO1XMI+hOAes/WBJ1n+LgBJ1h5v30=;
	h=To:Subject:From:Date:From;
	b=c8CtbSd246g1UXty6aX7kQx0HTYS2wQzBqlXqM9CkB6qQUz4lyZLFq3cEkmQJ4t0S
	 lm6gDlovuEkVRxFLjfA2FC/cicjf9BBMsj7o7JzZfpkk1X7JppYIJoZtz9zTmU5knA
	 eYvqioyIFoD6dhGcWBb/NKsWbdDr6Ba3TN11E8ftAN+MnhYS84uvFePSf/BBbU5VjN
	 fzMG+5AItyM8JCKrdORtKK69D3ttqXvL2XhgcfADM1Jy4IEM+DW9CuFwIrjYHV9+ID
	 CmHP+aVK/6B6WiFd5sHmQmSEGNYhANEEt//MCK6F9911nvWjyhp5oWFT3f5TMw/AFG
	 gDzCx9rMb8Ebg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACF3DCA5FD2
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 15:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179086983369.26218.534191621346804773.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 76db704b51f0f850c496854b1360333cffbae1bb043e06786f823b754a3d8882
Date: Thu, 01 Oct 2026 15:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790869833
