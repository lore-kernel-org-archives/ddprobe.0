Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B2C41EFF96
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 15:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752421194; cv=none; b=agyK4uXhcmcAnjz7cgf0liLzzScquYkC/BhEvkzWUEp1XlDqNGhDd/45aTTtwjOQuu1lkLUSam9bJBJVsBu9/qZILkL7x3eTWDQtLytzcgSnhPTD+5mFKWJnLfmQPS9h2/Ujn/3ak0Mb/fyKV6/KL1RZjbMK/WcZTeSuUzXcyeg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752421194; c=relaxed/simple;
	bh=NZiJTSRNYsIAdSa9DO8jlYpJFcXv7tBtqFgLNAMZcp0=;
	h=To:Subject:From:Message-Id:Date; b=qqvxcQRc0GqyuaucIQ3CkxaXmYcCZWlPb9ONmVQNlj9X1Tmm9r5y0hBAZkMeAonx0BZTY+uCUg+h6hMuK+HJmJ+N8NVJdMcM8lLSH5+XcQp2G/BsiY1deWH31TAHE0CWV7Dp9NI+6OsvaCW6KnTQfdv9aUk35AoRcUUCm7lX3AY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U/ROf7DG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U/ROf7DG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A460BC4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 15:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752421193;
	bh=NZiJTSRNYsIAdSa9DO8jlYpJFcXv7tBtqFgLNAMZcp0=;
	h=To:Subject:From:Date:From;
	b=U/ROf7DG7fYMKiWgkUAik9bTAUqGgUTh6fTClEcLnY2O2nSou2inBHn499MX0qprE
	 QNj54+6qJZu9ydIQ6KRPMc6f60nbPYzNcc9Dn7693tdXnWEiM+2wdreg1PZclhpqQ3
	 /IV3/8oi+ntTiUSxVmx0zfpBVNkPVardC4wUV2TpSdgauN6NtJsavbM3lssh+gx5xp
	 pnSak1WcQ+wP3/pnggAbH724L9amdkD1/jlXWOQZ0B1QB9W3fJE9hILA8IL1q5QTyN
	 jfZmWETu2ulBCn85atmCLxpVYMRCX7MiUx3i3sM8SpZ4iDI+VqBwh6NzqAWD/iLwp/
	 QD5fc0JuF/c+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95732C83F17
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 15:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175242119358.13131.6604079989064521223.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 212e33af8b55a613ecf506c719be8dae8d1e177d36802742e746996650c30927
Date: Sun, 13 Jul 2025 15:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752421193
