Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11CD9525B
	for <ddprobe@lists.linux.dev>; Thu,  1 Feb 2024 01:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706752097; cv=none; b=UEE9LEgdcWFCOpY3UTHWVjvlbjpsW8vUtUWWtGHh5DDJwOZa/MYlW3OxxB/5mRlKMrcdKVCfyUL1vdn9ngETc2fDaUbfhHxYRGFfjJkH2qElvfmdDR50+rJFPVlezE16hcHUDPC1JunsBpH0W3Z3i9i3j0bPJv7+9902L6EUttA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706752097; c=relaxed/simple;
	bh=LIib31djq5QZ1KyKqDVf+Sfo9A0b5xvCusssG2WXebE=;
	h=To:Subject:From:Message-Id:Date; b=WVzv03kXmTjsxkf4UcjDiV5Gd/pPpWBtlNAcAFzgUUCX5Wbg/Ua0KdrSq434yDFy/5OWisT28E/wiT6pnqIAZGxIgLGAF0D1YgMPqe7Pj9Y60UOPVEiu0gPnPu7pSD4VmGfEDBQwo6QHd04T058K/ZtzqV55yNgHoYoMQXkXLBA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EHopl6y1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EHopl6y1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7908DC433C7
	for <ddprobe@lists.linux.dev>; Thu,  1 Feb 2024 01:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706752096;
	bh=LIib31djq5QZ1KyKqDVf+Sfo9A0b5xvCusssG2WXebE=;
	h=To:Subject:From:Date:From;
	b=EHopl6y18kRwyQpfgp77pI7YugSJ6yWeq2wn6GrU71Jvr9ajh6iIpy/S9ie2tWOlk
	 wmehGpj68RJjp4whiX/wBIBpzY8l+VevL35DknrVsOWgLxBosgrd/C56AUBWzyTj8E
	 IwupGrURzPd4WGT2NHfUEZ/+WbIS0GzWyEt4W6MkiV+/MgwzXDWv8YpxkSTq5ttQJq
	 Uzz5+YUkFHB8wc1HuwxkBtG+q3+Jfp9i1Gc3dqyvFmHUHKAZCr84ysss5ps14KwFAw
	 885MFOWibhPKaYx12rkvSYAsTX2yRvjpkemYDDTHRs0qzpDwYqAmN4dp3uMG0B2J3I
	 XmTRX3mwKvnFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5EB53C47DB3
	for <ddprobe@lists.linux.dev>; Thu,  1 Feb 2024 01:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170675209638.25425.6548225344880714011.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 15e9e18891ae790c38f48c6776bd92673012915c099382f85fd0840331cdc60c
Date: Thu, 01 Feb 2024 01:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706752096
