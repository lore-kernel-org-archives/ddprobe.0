Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48BAA2D9792
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 20:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787344834; cv=none; b=hiKvrOQwzQtJSPpPi1crmMVhGMUxt+ccM6y7zK0ni/d1CO+i/mYlQi2NCA3eZ2aZuoxPwQf15e9IB5HZa7ZQ2XmZkIqJ2zEsmovzX9m8BzwTrpLyh0l2WLyBVXeumPlgnI6wvmEA7+UfMJG67OobthNWeqchBfnLgTKGIcjEAhk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787344834; c=relaxed/simple;
	bh=x7dTRaONeJYOYEXYzkOvviHYfqjCLqKFrNhu+g12qKk=;
	h=To:Subject:From:Message-Id:Date; b=SNZrEmgL0TpcPIrgBa18X48gvfH7h33Kz5AI/1jC1Wum4xoPptiRT25bv2J0SFzQmEmMfYgbV0e2Xpasf3iGrHAnJewY7aGjNpGLLkPIEUon4MdKmf2VLazw6H1wZik6P48M8L5WPhr6YjWpeE2t1jnOh4pDGV1lI3SkMf10eRg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XgmGs3Nu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XgmGs3Nu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE68FC2BCF4
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 20:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787344833;
	bh=x7dTRaONeJYOYEXYzkOvviHYfqjCLqKFrNhu+g12qKk=;
	h=To:Subject:From:Date:From;
	b=XgmGs3NuUlqUQyQurmHtSqlqfo5woKE9rrp/yn/MQF/0ptGGJwJaoN/K6x4G4Ux59
	 Cs1vi/lpki2nDYIKH+CthZNUhqzQG66luFwUe5tGnzt0haqStJHO6VK4S7ci0RgE2D
	 gYm3lMCtL429p2jkGzbc+rPZGlFYGraRW//C89v0i4YNSkQfNIX1Ff9ZnDsanFQAMc
	 5TCJ6qcuZVXKSc0rK7zaN5eyzQ4EAh89yOWmfReXn8fbUj0bbfnY5X6gYTIDz1gywY
	 bEytEqEVEeCRQytwbX7cRpEI5sNOfuKdGqw4GKtU9WBX7toBEWHta07Eo3OQLm7zMc
	 NyTWy4tbksCrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABB6BC5DF7D
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 20:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178734483369.6222.12318469911070626503.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bb74020a79ba2a426efe30652ee6f5b199e6c00350db17157f4c92d57e689885
Date: Fri, 21 Aug 2026 20:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787344833
