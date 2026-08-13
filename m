Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6865141CB5F
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 06:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786602634; cv=none; b=BLE93rE2jny72DcAJ7RI8RLhqo9hpOSCZFqsBM7BNlrTlJ2qgbj2fyMeGLLtiTRkpO8bSa7PkmUJ80QSJoKBBnlY4AZDom6zD3iNnShEzAvGgIhkKDrflXr0iSCBfQ76LSPiLGXkr/gxQbLJv514bl5LMmFUVPw1bQEBCmDoiGw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786602634; c=relaxed/simple;
	bh=EZdachDeRsi/k+gKG8DxXNvNyAdtgDHLg4LpJF3Wqk0=;
	h=To:Subject:From:Message-Id:Date; b=DHlRJouVfBlXTIB1NzpszSzrqqKFRlWffSQhUwo69cVIGYokAzDOvS+uMRvvC0F5g3WYLa02GK43UKNYGYDBXR9AMYkQUx1CQ/sx3XTth/uUP/USDgZ1jhSf6CHST4mqNTEge5TS6cSEOE5pnWv8IJzFhRFTrRy/+bqrFGyGRgE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o2mexEGw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o2mexEGw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD66BC2BCF4
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 06:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786602633;
	bh=EZdachDeRsi/k+gKG8DxXNvNyAdtgDHLg4LpJF3Wqk0=;
	h=To:Subject:From:Date:From;
	b=o2mexEGwZFwOiZFc6LfTa4NUbGawyNrMKAKLYdNzhQi/Ya95tTnXLKnwDiTox0qBN
	 AwSRHCjtp6n8s3JXCSncexDLRDstP3nKtc3yjeQEUIFlm7n6TXXUX/SqlV1frLog4m
	 y2XG0O6mboQUlo2oc666AMFvS+zARQH+5M4u2fgqeV0tf/uyUZtH6zwoToxEmo8UiS
	 i1YBwi8FXvl2hGnRtgM4uf0zC9fP4WtfJUbPK88aCdN3DCJjiJI9hLIK/eEUdZ7stC
	 RSbDs/fUtMTdkNuKUkE1alwDaiHn/+2RFqBOa5Sec2x5NrNusgcnXHRusrQvP6QtTU
	 tPB45/p34M0/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7FBDC5CFEB
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 06:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178660263368.6866.6695339543753608352.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 325693caa0fc557ddde4551bfa63df4c0f3470cef5082953d8d823d4e164c862
Date: Thu, 13 Aug 2026 06:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786602633
