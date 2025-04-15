Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DA4C222568
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 18:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744742394; cv=none; b=SgeQlYyzT06UhP6qvu4TalL6Sr2JPczNJp/Q5EgyqSmTP3lMjgdPmgU1/wUdq3G5vPcc/+JA3bg5y7WRDsTIVqy+LiaHAy+7z7t3Cn6UMp4lXPJL6hvSkPhrItyiETnLZSfOCkdmHtiV4VHaI3qbGy/1RBgkkVF8M2HBiB9OWW0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744742394; c=relaxed/simple;
	bh=nm/nQ4PxaY+MmKWe8gVToddEAqh9cqx2pweVWKOKsjc=;
	h=To:Subject:From:Message-Id:Date; b=gqJ23YK74GECL1IjPeD5xKSOM2APi9EBGo+5yAAhd/J/MtPwZYwy5/3R1Wg6Cw9j3zVHsibzx/AFIQtyNuqpU5OFbqEIiXMR7UUZqlzBCgYGEohQCXRv80oaZ2EkM2E7japaILJLl2a/9GcWALsg44moe4gq2ktrrqpCmqOqDuA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rhsmF5Ka; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rhsmF5Ka"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A264CC4CEE9
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 18:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744742393;
	bh=nm/nQ4PxaY+MmKWe8gVToddEAqh9cqx2pweVWKOKsjc=;
	h=To:Subject:From:Date:From;
	b=rhsmF5Kaq1AXr/kIr/8ZGh2cScLu2DrnPGSThshSmlqqGk91ITzKjmYktbgv96xmH
	 h2oxyZuhXeBskm8LfC4xGKJpP6adcDLx6L+h2+c7YHY7KtbU4HeHBBmfNrE2MZXock
	 fssPLcHc3hYJ3jcmdEqiUIX+d0va5Bafb+0yrbN52fwpjZ7E07AqqDIz/l5sLemxe9
	 CZhfWu1oqmCneOmX2dyZ1wP9hYvlZRU+pgwg5BO8s7sFJf8ttJ9v5m3Muo1gSEK1mc
	 Qw+juq1z/nQbsfjcFriXokU9azYwNzE/WSPUV4z9mtF3G7a+NQvXP9HhWQfNMKE3i6
	 MCFeNZZjWQ3tQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91F8FC369AB
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 18:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174474239357.1393.13387554098390917310.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 119e1c9ad85d61ef1505f311dd35ceccffd39be26724fb883239eb73ad3808a6
Date: Tue, 15 Apr 2025 18:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744742393
