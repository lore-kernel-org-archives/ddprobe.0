Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0821A2D6E44
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 05:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773122094; cv=none; b=hAd36p5f3DVLrMTV8QOeIjC8SjZHnvwBqc/fsm6ryagCvtctrwc3ESy62cr+czP8ABfXCYa8s8WPqBvTXGTLC383k5bxn3+GPN/wwhaK3pR6MheO3wJVfY9iqoOFltro3m9XNd8P5k+xMAUB6cw30XAU6dtIesvrrYxZRb7JssI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773122094; c=relaxed/simple;
	bh=SOxki4+SqvjK5T2b2PvKPOYbdvkpq9gFt0TlJHKzHiw=;
	h=To:Subject:From:Message-Id:Date; b=r+AeSbzPFE6hhZkue11cYtLtwiRlVMGN6j84+cnAEkZy4jsZqHeQbPRoJRJGLSD9Un9dJlD0gCKg4d9KgXTd0Wf49Tjso858wdWsXhWxD55MJpEPYNhTx7H0FSgfHBliCmSV6gXdzrMatZ7BRBwy8Z945KU91+Thwnn4dK46SmI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NjsUjxe2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NjsUjxe2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD965C19423
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 05:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773122093;
	bh=SOxki4+SqvjK5T2b2PvKPOYbdvkpq9gFt0TlJHKzHiw=;
	h=To:Subject:From:Date:From;
	b=NjsUjxe2kXhOpNxPesydqm7VHPYhwnDHz2xlpHRvGH+p2wC2kAcfxXpiHtN8oLVPm
	 HhrnhleOvlhXV/AHNmn9ESw2YBtYa5kImp3dKzKR7xhbnOcrEZiLBbxOw0+9e/grCR
	 cdczdUqwl/9zQhLj7A7GpC2Wvo4nuH4pyYyw+cGXpEFLz4p63kinCTfitm8vPPuKks
	 CzQ+yb6otHq+WK9kOG6BT3u7dgrlNeUdEWY8AbWAgUv0AD1NOBouOgwVIw8AX7MFVI
	 gcUi6xDBrzpHBHgUo/6Yi9q6HW9G0qH6XoOUZa0rqcVt0pO/0xsx85hAS6KPUjDpSS
	 Zf2GiVeuvFCuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C00BFCC9C4
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 05:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177312209362.30502.785075970903840832.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dbc023857dbc0369b3267d9876150e962ec8d2e1783c4c48de11147d07ca6538
Date: Tue, 10 Mar 2026 05:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773122093
