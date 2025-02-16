Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5CB1A16EB4C
	for <ddprobe@lists.linux.dev>; Sun, 16 Feb 2025 22:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739746734; cv=none; b=l4YQZx066TSvRLbDptn8eRs6wYYGNtbuEkmyF2OBxp3xm2maZ3Qsf5ZnO2Cx6a/MKaTQTWqxGLrgK2ax2aRew69sAQ958MFGLRXnevaGFLvMYDvKX60XQfBJ0YxWzp3NlQeYHC95frrQKaIzmJxVv8yuhjadIhd78rd01gmCSOo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739746734; c=relaxed/simple;
	bh=cG8XzY4encqDOQsIwpKwGBmPJRQfEVHWwU6OMaqBIrI=;
	h=To:Subject:From:Message-Id:Date; b=PaAgXZVfFhl+Y0Cft3xWC3fXmek7NjIUh9zM7Ai2ZD/ngfCK5jOJHaZbVtxOzfClXxdf/o02AIFb3vxrw6gfyCFNIYhDnXcLu2nrwIfb0VRymBO+++JNwRfssIJnrEkhhtSqDiEkkx6kfk2gLBKqnnVqoXvZm8bIm76Hmq5CjM8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W0M36m4O; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W0M36m4O"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF8A2C4CEDD
	for <ddprobe@lists.linux.dev>; Sun, 16 Feb 2025 22:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739746733;
	bh=cG8XzY4encqDOQsIwpKwGBmPJRQfEVHWwU6OMaqBIrI=;
	h=To:Subject:From:Date:From;
	b=W0M36m4OK87LygqMZaUaKpFOcVnREAtFdIRyxnIvJ6xTpGQT9olC0GmdxC5lAJkv8
	 YyUItAD/ehEZUwzY03h3VvZdQqMRxANyeRJux+oFZmU/5Lep9qx+K4lxXTEwvLKggk
	 ryFSUtGLk1FLRw/PibhqMwby+eeLPIOTUZOMKCsjSv9UIv52ZSgI1bVKjULRQ+9Zg4
	 7kpGeiiGuD7UrUrvtUe/zurnOH0XmvVh6DxwCCty3rEUPW3jkxo7/gDl2NlC/gdLWD
	 RIRmnfR3WY23eqI1waFaVePXY9HsQWMpKoBQJN+LdVvUJYLpLL9ssjqwIgb5D5JbXc
	 4m9MmJSHR+chg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9792AC02198
	for <ddprobe@lists.linux.dev>; Sun, 16 Feb 2025 22:58:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173974673358.13877.9894541059959903527.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1790c5030dbd4a28f8801f985480b2f152919ee70c3153db8581de0404466d83
Date: Sun, 16 Feb 2025 22:58:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739746733
