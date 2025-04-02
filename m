Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38EBC233722
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 07:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743580794; cv=none; b=KS3XcqrGTmwtjNf2+wRb3ta+kmoYBPhTtrNdwULczFZcqIY6MNso0RXm1Gh/zJ4grCdOhT2G7Nm45J+lkxV0GH+okEaBs+odXZsKrB36uvzRWySZPRPZnLhtbDI3mRiogsg4Oij6Wwl4zitwLlDJPytOlqRjBB8aRtf/29Y0cFs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743580794; c=relaxed/simple;
	bh=lbh5tQqJmGxaEOxwqEaJU8VyLIZPzSeZvsMmq9XaNKI=;
	h=To:Subject:From:Message-Id:Date; b=YSo9AUU9zG5dokUT8U+KaQUa7aLS9HD296QmXxrsu4YdW91dXsxqc2oE2FBUa4XvTOuHA8iyNLvm+esSpA+Zt2xsxRsIq+ZCVGYf3XWcu9yYPUCWe4s163nvso+CF3khOnf0GD+uy+6LvnIbJgcNWwn6eHmMPqQO+KiKt5mPP74=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MumIKJEh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MumIKJEh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2D60C4CEDD
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 07:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743580793;
	bh=lbh5tQqJmGxaEOxwqEaJU8VyLIZPzSeZvsMmq9XaNKI=;
	h=To:Subject:From:Date:From;
	b=MumIKJEhK0d4MfjKa8ytUoX7/YTlcL3IU/5WXvhj7w6L9lcO3wyL+JbyLTBb+BcZN
	 ofPEuLGLaEO1uIw5gi9IajHMhfwqZRjWMjfGmi91D9b8R3pAhG30By3plw5PbTNDwJ
	 vxsTYIfJzpm9+rH2dFtcE3YFzznoRSSffxSgY2Ew0eyiv172XsOMbfjGtmJG9OJOeG
	 Jz3Ef9V9bizurf8KO3HdwVxGTeiruZxztzf9qA/bxBt3l2gZDfvgy8YJ+J3RquWt3H
	 UzDVTPkD5fxmOhSff7wdnXhSGY4hKgqDS+UoxKnVAIPrlwctc4kE1aZYMpOMWpN9IC
	 wsiJ90Vnhe5/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93FA3C36014
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 07:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174358079359.12751.6386781114153206502.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d0c2643187939428c10ab8d618417792f036a119b57e54dc7ea0d5e949a14f44
Date: Wed, 02 Apr 2025 07:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743580793
