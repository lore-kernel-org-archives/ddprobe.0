Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B1F135BDCB
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 16:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772988894; cv=none; b=dMInFiapHmcBnjqK9pUc1fQIYw7jZVLXkRitjeV0Ynw6VG5mQzLrFJ7NiL2kxKaTfj2QA5dT0cxN3Ce+5lYSRdukGu9GaGBW2Xi7FCwsuvZk0nUl3FXAHwOs4GkEBG4UOIl/LR5RyLvIHwMP9oUTJhbkLOpO3DJqpJOrGQbTipo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772988894; c=relaxed/simple;
	bh=PdhIgVlGSzcmYc3ES7KEzDxLH84T7TyZAXCX1eWtpMc=;
	h=To:Subject:From:Message-Id:Date; b=Qvdoc1hYnLARBlcN3uKlqiOVm88J4288YLVlpD5sTbAhd9+cYkrTNy1OjGWLGtv3VES1Td1IqZPdOxGd47bhc9ppXFAmSQd5sQwsygp3NOk8wR/S4B1m6q4vgGmLYubHcHY7Mh8U8eddV3psUtn/eWYMlSrN0cx/Vic3bNptgmE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YlebiHvA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YlebiHvA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD337C116C6
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 16:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772988893;
	bh=PdhIgVlGSzcmYc3ES7KEzDxLH84T7TyZAXCX1eWtpMc=;
	h=To:Subject:From:Date:From;
	b=YlebiHvAg03sNyf57PVk+Ozz2VVDcmTR7fi3c8TmRrvAYUCksnqsqZJNC5HQnxENS
	 iy9uwkILq4x7IKY9fV548zyik+ix+/bkIAhnf2KWOrbYbZFkT7wLQCp8MRRcT3w8G9
	 fhVV1jD7an/5w4FtdrNbHdx/0SOT/PUV5IGxj5W1quGaAAVTf7lxdvc9cahDLg1bMb
	 CpKjfr2T1rJd+t86Of8tb1w7YHvHjCZTnE4Ue+xkByO+YsCEUonE/xLl5UsCA0LPLK
	 6HXJZl/r3hE0M5FFirNCNawiewQQiOG1nSASZURBsiDjpbIYuUUw6MyxTxxpnXfXvZ
	 gY+E9NYE5Nkzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C7DFEA8535
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 16:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177298889362.7532.10663339571800707419.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1fc5735dbd29ddddae71390ab61186f4cec307c2e06a0790c641bfe7a50bcf93
Date: Sun, 08 Mar 2026 16:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772988893
