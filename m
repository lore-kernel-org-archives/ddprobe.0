Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BA527260A
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 10:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748775594; cv=none; b=Yr40rJK2btFvOw7is3iUQ8iYL4s53yGLNT7QzqcDIqCdmcd7E1XkVzGeLDqz0MzMmV9WoyhI+JplZKBQmI+IoqzbyuBEBohBkSWT/PKQjZMyS2GFUnhVAzKFM/OyS36ml4Gj5CLBsyjuJ07uV33+rlgz6oz9raOQJQlFAdplOK8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748775594; c=relaxed/simple;
	bh=dkUfQejwEGfE6iaXsW/ewuKCLiST9IF0dZ0WaPdjrMI=;
	h=To:Subject:From:Message-Id:Date; b=jzKTxbyA2XKlyFYxSbnxNhPUpr1dO8VZJipkpUwXAzaM7aozJ/3lrVPCSMce6fv81nxfutVNc5soWMMMOdmAKlWqDx00/uB0E3ahoq9ps1KYqbuUkGVUrBNu0TkaEMSHbo+ME10GzOr3CSPr/9/Yg7vbR+kZnCTodBBT/fUQn8U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uBSfPke+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uBSfPke+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7000C4CEE7
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 10:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748775593;
	bh=dkUfQejwEGfE6iaXsW/ewuKCLiST9IF0dZ0WaPdjrMI=;
	h=To:Subject:From:Date:From;
	b=uBSfPke+rjMpwPLjZ06HQMQjhmROXEjPZNIfx5gC+WfXQ3hhTY1shsPlXcgIZqFFY
	 y5fvePb0CoyOlC7X18Jny3UbNqbia6EjiarQHdco4yt/XBxPYutxruCBeKVfc50/jv
	 xcD/+ib9Gxm820imz+rFTjjvRb4Jj9Ozqqh3Rsra8IvQimUkKLOHj4icu7L+vJkkhQ
	 rL86SsEsHvPe7AH6DUPSKgHQcbfQS/W8SoQS6roim8iI6EZ89rNv12tpP+58Z8TJBw
	 kqHjA12dAxRCwnwA0kRQVr2QtEVAqPzfTM/6Jai3Nhdug6Zq0WvIarR+fr/jzDGdQT
	 WNtZR2/WVeEuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 940C6C54FB3
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 10:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174877559357.8340.9075884647647224925.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec348f0c2b8d57909a800da5c2ebdb1e1e9895eca1ba424bae4f70f16d8947c1
Date: Sun, 01 Jun 2025 10:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748775593
