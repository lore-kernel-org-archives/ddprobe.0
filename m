Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19C9C39EF32
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 22:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779314435; cv=none; b=Z4dLReeL2cTurc6kSwuvVpJQ+T3DX2p6UqmrpiztChxczGza8zf1w2xrBC19Vcm9EV5lfezR4JWlsk7m+yEKXh/OZK2V7ejrU5EZk3uGT9SDTAbNNURUDi6VBdb6PA31EqNxEcGs+2XXQYY+FbZtEFF01Qf/WCT/PU2z1JsuvtI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779314435; c=relaxed/simple;
	bh=gRcLl0tI3rx6qe6z0iLboSztPTd06R2fJXU/Q0pFksA=;
	h=To:Subject:From:Message-Id:Date; b=PECYuhFjUBJDdb4tcSfF3vv5vVYd9lxaCfRmchOj0Ck3tLcpwHDDvmhTORj/gXNPl8W+vl6iy68x3dBpy+7Z/Xv9tyyNV0aFYsXMY5rVSUSm4HXQTu6ieBS69+fNXRsi7uYOYUBiVEZlY2mOoiO+54xVeyBkZlTq2CBoSKTVdHc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ir6LPaQA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ir6LPaQA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 60418C2BCB0
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 22:00:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779314434;
	bh=gRcLl0tI3rx6qe6z0iLboSztPTd06R2fJXU/Q0pFksA=;
	h=To:Subject:From:Date:From;
	b=Ir6LPaQAIcUsXX5awcNlhCYnf7mD75WD0LhYfVKkzzYRA4M5141U74dO6yJO3xwjh
	 OQsUEVXIYnGxm0k6j5vl6WhG/KOXuQ6GYwlCsT4oyJdCmmhMqhtzpNQaanWJhPvepW
	 0OzI4gXwNS37MkTvgceaJ+TeGo/8BRCCthWftIodui08M1fdBx8LvN+0BHFR9yqLK1
	 zVT7xwa/RxLHAKle9vwpPatHhNPI0v0b8eSxB1h7HFOzJ+5J5YWk3pd1t33w31eOIT
	 u4z87L9kpMUTmTT7W0XTvw86gK8zexQHEqWi5kFIJQ9JsnstJFtekNXI9ZbDB8M6wH
	 MUPjoFTUZHc8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0A35CCD4F3D
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 22:00:34 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177931443399.18007.18423981202133917401.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: edddb91b1c02c79523c247d9d2458008498619dfa7424c0f001582fa0615406d
Date: Wed, 20 May 2026 22:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779314433
