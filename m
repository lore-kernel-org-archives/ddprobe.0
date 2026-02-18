Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F8C426B777
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 06:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771396494; cv=none; b=fjZmrJy0nlY9YtP1lZQNIit5t+/FnJKsEzo4sYlpGM75S8ORDOxPMuB4p9aR1/qfFGi+oMWd/ksiDYMRbZCPrtSUWIsZKbj61RH8S8EL1hyAPxT4xJNeX8mwDNDC12vppXu8DtAZwl20KehtDRrZ2jr4e0kCbelxlOjV5vY9iiY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771396494; c=relaxed/simple;
	bh=r7z6BDVjgEU0tjv7A2ZtNJ3+5MTyGJ825lOU9tLzhmk=;
	h=To:Subject:From:Message-Id:Date; b=DWCyxjM02W3ZKVNtei9qV3Szjj1OydXFBxJNHCqED26cG7ieecq0Dk67XgyRMNLJiFquFZoTg6w8reNh0J8ZltagE/mXJ6fRijg66193L8As3H9c7ZiwTUaKQjFnVD9WA2keAHZJun9c89XhD4cHk29neruKVr+D1Mymbri3jO0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nyDtTn9/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nyDtTn9/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1DFAC19421
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 06:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771396493;
	bh=r7z6BDVjgEU0tjv7A2ZtNJ3+5MTyGJ825lOU9tLzhmk=;
	h=To:Subject:From:Date:From;
	b=nyDtTn9/15FTUi+hKAuK9xR3MI1+7UmG8DcZ31A8w2yEfft/YG8EB4bfp9jO6vj2H
	 U+w+ccfEXcmN/r/Yq15rLFLpuZ0JiGqGSYjyhSyM2T1VezHIznDzjEumMGhQkGR8yC
	 CsgLFdXDJlC7C27xG0kTBDHbcDJpC2u7hwEwc/R6HuNJ6XNmq0d9BXfKl/v2cdUOyr
	 oBvsFYc3oRMCfRWEulJAje5gRZ7ANHdzpf5r/ypIzOHmrI6kpYYFf0YzBF4c+0b92k
	 4PVilD7ahjBweFN4lUmWqeaJ0BX+1nGR5Q1w7I1JW9h9mBZbL6dxCQEOtDTqwWTsb6
	 FWaQEUI3nOLeQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90491E9A03B
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 06:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177139649358.3523.17703005101808665321.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3fbddd22a195f47ec437ee166025e15d730fea12549fcbb43e37d043fa48f71f
Date: Wed, 18 Feb 2026 06:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771396493
