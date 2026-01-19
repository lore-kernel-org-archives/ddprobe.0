Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF5F213B584
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 03:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768792433; cv=none; b=KOuqSg9PTgT+IgjGk14xg9x67IhI5BKjIc8y7D31rUPbxZwRat20ehF8AMDedKjzA3ZrEmYTEpZxp6nLkSpci0NXnL38KRRs+bXsEVTf2SJz/pIDOQCZ++B6iO2DVHAic2QV1LiE/xSuYE+1Ev3D6Po+alYZdIA/FzdqUIapVg8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768792433; c=relaxed/simple;
	bh=OxLQHLG7U5q/AR3jlqImqTzqLltHUzLC6GN+9y7XvpM=;
	h=To:Subject:From:Message-Id:Date; b=MG98C6DjufMyvPyoiHydtpITTCj5aOAhntgOGMUuSD95nNiVdvAo9abyFhO4rm9MHLIZdMdJJ10JNQ5HASZMpts4wlGVA/M2llic7lcS8mHngWb2jlGNYaeFONWOq32bI3lSHY7TiH6XShS86pzo4X2kU8Hl0bnbKaW0mbtXegU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZEL+SLsR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZEL+SLsR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7741C19421
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 03:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768792433;
	bh=OxLQHLG7U5q/AR3jlqImqTzqLltHUzLC6GN+9y7XvpM=;
	h=To:Subject:From:Date:From;
	b=ZEL+SLsR4ogMszRre64QxN//aSfRnaabT+0b45C+MH51HYmdOKQ6TpPgLZ2pi3DDs
	 a0gp1kfm4JSh+u6gzinuKN2NrZijSYf/ShjznG67FgagJdXt9LNRImJTTqZpohmpCG
	 9c6LxtfEUyKu/FqyS4JT0SOpDP/HrgyOj2sQWuZtHXNOva6FRmwYjJd8HaDrzm79Dw
	 vzAKyI8pIjXg8xFr13l7GCWYcq9U0veRGrYpQNrSRx2jk4exloC/cQiJoq4uRLMc0b
	 SjlGxxYvKKMbkZHW6x5s3oUk6SxG2Jo8LYrY3TUv90RRPesmpI/9TCeYIQTGdVpWsK
	 heNGadK95UGPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 967D3C98315
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 03:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176879243360.5902.16879356117568679577.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c9fd1347ab95b16d8d11750f52d37eccb3f461130d3d2cf4caa712789536bff2
Date: Mon, 19 Jan 2026 03:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768792433
