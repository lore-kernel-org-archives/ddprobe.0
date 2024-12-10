Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1365919E7EB
	for <ddprobe@lists.linux.dev>; Tue, 10 Dec 2024 11:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733828754; cv=none; b=bRuReZwhbwRbJ773F1rMpPZ5xCM11DsQHadRrZk4ZWID6NSTtvEETEUHKJ6kHJylg9xNrnFWbiE63uetow4axuVXW7C9M7HGhYx5Vm2pzpzwg8KGUxKVTaUYkat1v81B8IAKj8lurkYv4LqbLOI+rfggo3NarAUlbcugDz+vkYQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733828754; c=relaxed/simple;
	bh=EemsHa1L6+RJdyJ2dFtyACuU2GNdPAcoYIaq7rp2whw=;
	h=To:Subject:From:Message-Id:Date; b=UY2lk2Ap7YqPcfusVqUDgBUUYncOHsLzpm3wD2WCHFnVEyeiRpfE6jsfiQ5S2YWI7Cu6/5fS4jViDLUgbiMg/bYLFehu0wAawX3DTQ+E3eRg2TdHZXqQ8g33m5i74VvdCTkvIJslkkn8kwK7cM3O1lOYICvvP6m9g0FMNhdWkzU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RQYV8zto; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RQYV8zto"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9AD0C4CED6
	for <ddprobe@lists.linux.dev>; Tue, 10 Dec 2024 11:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733828753;
	bh=EemsHa1L6+RJdyJ2dFtyACuU2GNdPAcoYIaq7rp2whw=;
	h=To:Subject:From:Date:From;
	b=RQYV8ztor6E+7jMdzneklyZnCa9IAvOvISTmtSiQN/fmRZULVY5jcqoxayWWRWq3m
	 MN4y2C2z64IVhcDlWvRlEsYog3E6p2YZL7WjkfCSWmoLwn/xMD5tZ/QLoqGO8xi80t
	 QcnOn2mjrKgQ3rS2IVF1VOMtG/Fyz3Z04my/DmAEjrHuAyj8OdIv1z0qW/Bu/Sm/Kq
	 IqxZYS5m4TeOx9Nt1JfxG5RV8Za0TT4CDsI0qZXDp5/1zBw5ORkPo5RukNAekOKOs5
	 QUWJ23A3mkEgppcxdAsHlF2556m+WT3jU4yBUfikOSSwDeRCvZ9HMwCjP2AaOZTLUA
	 I/uTEQTIZrsCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93C1BE77182
	for <ddprobe@lists.linux.dev>; Tue, 10 Dec 2024 11:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173382875359.20117.13479183291844686238.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef31969d84be0dc2b195fb156fb33b2f32d1604a6077236cb8ec24b59ae39918
Date: Tue, 10 Dec 2024 11:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733828753
