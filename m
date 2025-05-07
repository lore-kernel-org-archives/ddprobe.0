Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C0531FAC59
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 09:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746610794; cv=none; b=TlNkfWFnPER6PdMJnDG50z2E53OOdnDIikzyBXpTTyyjR8tbwp/CVi8f1dX22cT8sqt0iNlzqXWBM4VA8Tp/3lQw9v5LYmhoBJsYG5DLhlxo7lzwkZKT1r0tJuDcqK20IsPqafF2fBicshMK/6A3Z/6Nvm+eUo40OgA6KRdz2YQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746610794; c=relaxed/simple;
	bh=N4Ijlkq3znQlqcuQWY/n/mDo3CX/9sdPoFoZp6o9jgU=;
	h=To:Subject:From:Message-Id:Date; b=ShptwIj9QOdLhLaXl7v6pminQ9iC3Y8h2H3usCSskl79TqH7Gf9vB64xsDKIDzafwR6zAXUdVT6AYa0+P33dJivpWwzyn+vK6cQqDZtRHcxRFYlLVZFBxXs2aiRhl5MTS4sg8BbqW6bFHu5MgIka9Q4k9lA6RE7tKfgYHJkU1DQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iP2VZkMz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iP2VZkMz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9AA81C4CEE7
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 09:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746610793;
	bh=N4Ijlkq3znQlqcuQWY/n/mDo3CX/9sdPoFoZp6o9jgU=;
	h=To:Subject:From:Date:From;
	b=iP2VZkMzE9Y/aQX4A1Mu82mMY2GAgtEJhN1U3HWZANtEPZEpTud4L+XC+8acVLvnf
	 OYjcThpwbrd5i8o0ekAYbX/3LrAS+ImNZs+c00VCTBlf10eF8FUqP6q07rz3/+bEfV
	 ffJYBk7RSmEYigs3MKbOby5ldUj3RuuEnaopS96wvi6zHFFxznKzPZqKEnR6iQP9Ho
	 TmvRSynDQx0nVxWMAWwDK1LN1TEwBsg2UVTIXxxirmYS9lzxcbcMgTc/PApvtEQiu9
	 aOsW5ho6i+H6fpEBup3Up5LJWD7dMTwMd8FrTjH84t3DsnLu2DvDSIeL7V9kqoynsp
	 gQPTT6vGr+elQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8DDA9C3ABBF
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 09:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174661079357.18371.13303298061050563604.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3588f3bda9e750f96713f15206983d12e034e96e2c31b1fa77b90faea358140c
Date: Wed, 07 May 2025 09:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746610793
