Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 217BB19AD90
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 21:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754257195; cv=none; b=cxys5CERrybwGwO5jYVIPu1B3c3fhEXyj1M2V4FzLoEJVE6/GqFY2WsZUdbhMW/8vjSq1ZQRXUv0n45zobBMKKY3Mk7PKC1vMxpYP200PtDjBQfwFqqXkh9/W9jWofrKRs+v1l8lAnlL8zUqiPKUblDAypZHtKg3vNipwl6ngoo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754257195; c=relaxed/simple;
	bh=ZjQQhqpqf6OsyQKPTJPKouEa0EfvUwTeDl1FlHfFRHU=;
	h=To:Subject:From:Message-Id:Date; b=QeYMpdMrfwcmntKJd3AQrDIgqnZrJB2I7uo2+QdyDPoL6Fn8xsKLpP2sxobNCapj9EVAgO9zdtC9Ood6cW8RTeF6qmhIdRQ8lhUmNwSrzr6K3kPgY9woG/MKGF1wH52KdHD3gCuLnDLTecOzcQQwKuMC2JN3he4xFjOIfVMfkrE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XEmr+yXP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XEmr+yXP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A215EC4CEEB
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 21:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754257193;
	bh=ZjQQhqpqf6OsyQKPTJPKouEa0EfvUwTeDl1FlHfFRHU=;
	h=To:Subject:From:Date:From;
	b=XEmr+yXPWnOsluJAbVbK/+Pym3XXNDl1QTqqlMJxWShfZm9NPJ+WpFl/+0Q5Mwjpu
	 Ngt8sX8O6K+TtNjfRXidZt4vjhvQGJ4atNreItEHuu/NmhZXWGYufCDv/nNPqpH+qE
	 1cc4WmC1YLsSYcete60rkvwZp/9BeL+Rp4+nUsYhDV3xr4QJd5jjoVTisJaph+QgGD
	 QwYECgcIsqOEjtUtID0a38BxduGtwkXG5mEaS0kTUo2OaiBrS5bmsKtsxbKT8n2NHO
	 HWuwTHOmqn4/UbNm4poATCWkVA52wYByLh1t2WexEJi8WjZVF5rk5plCmLwImORgVp
	 syjh+LBaWnxZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EC5CC87FCA
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 21:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175425719357.791.17360685643841496576.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d4a63563df07f3d79fa2a49e19ed797751750ea1fe1375948ceef4efc033226d
Date: Sun, 03 Aug 2025 21:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754257193
