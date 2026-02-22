Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20848168BD
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 15:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771772694; cv=none; b=twJFMUuTh5RgewT0TRIPn2YtGDHgeOkUxOotc2F57opBux+Gq70iR0RGlKFp6HMyW7HzMMxyN+Jv8Mrufnq13lwnEoaP63oPJprv1g3kcyFAAaaS0l7i6WaZGm5tIGEaklk4lErEw1leQQvQClGLyUPgIhD+8dwLDMF8OaaPu1I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771772694; c=relaxed/simple;
	bh=a8b3C5rx+LUUWqDhqMNAOYtPEvtuJXzW3LcjHUPxcj0=;
	h=To:Subject:From:Message-Id:Date; b=G2ANn18HAf5ZhDYU8O126sF/W0LqAepcM2WwzcmxIr7r+e8HpMmVbSmvxsYzfxzMaQWXTf+fqkJeAP17DeWYsYGXodhRnnMNrnFUzcLruzuHDdI49LyFCsqF/UzWMcwhiM1epIrWZOBhtz/vQ6NPFZEa8P5ntuJaZUVDPIrvhbw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KT0hMizD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KT0hMizD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2A36C116D0
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 15:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771772693;
	bh=a8b3C5rx+LUUWqDhqMNAOYtPEvtuJXzW3LcjHUPxcj0=;
	h=To:Subject:From:Date:From;
	b=KT0hMizDZ3k8c9pHGQ7ax9FCrStK0gwDgTGSzbUkIQpAXXOR2WfauVbtjvJUzuOga
	 5XLdD4ZnD/ttq8c/D44KPbuiZAa2Srrty1OxKjwykRoI7DqpqElHaaJzj369fTf31w
	 Vl8A5+h8cS5/cCiOZMvPCXV0h9DFrOrfWebWYEUCj7S8cmvcloC4iQn6+p/Q8FaYNw
	 6nixbRN9oP5Kul5ZQubRspThk9CCYx+nAc4zD+lehAfJAFI212R3h8XEXj7Xg/bk8F
	 PGJxYCrAuH8KBZL/NDJyb9a/x4I1FzNEUv6k+/qOzGpkl0FBxAyZL2+0Jqkhm+aYWV
	 XOSU214u97zoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98103C624D6
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 15:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177177269359.17754.7647622692532959753.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aee01f8781496483f1510ed76a9f27eb86ffa68d334db141aefbdc942714a0dc
Date: Sun, 22 Feb 2026 15:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771772693
