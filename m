Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33B41286AC
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 03:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776397054; cv=none; b=XS+4qDLMCDlHBYdjxS2OxyMw+P6f7YSXMSC5cuNQlcBPl4ogePQyB2dqKn//yc3c33wSuL2LgvqEGcxVRMJl3bCMWFNhISqlF6K8dCEsbHmVQpXcCAE5GKHUtxZ9t4MsyUuHvWT961EOz4SjvRx4GiGeCgUVRrRRllJGI3Z3M+k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776397054; c=relaxed/simple;
	bh=k8L0yvNpzVx+dOs0N42PHKyrVyMu7faWIwwQVZ/lgHs=;
	h=To:Subject:From:Message-Id:Date; b=Huv8PVDZ+vEORsYZXYiAo0JH1svWmdv502Cfl/A8JtiW7ntoPxdUSC1KWIdyq43ykfIKCyPjLwKLHJr3yf7MkIpOf10PJhntccXOPG3CB058UnXUgFn49DJWzgck3dQLBGdwmJyG7C8iK4sR4WxgTs9Cip/yrmpTdNzwBVQhXiQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iYbHOYCU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iYbHOYCU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA336C19425
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 03:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776397053;
	bh=k8L0yvNpzVx+dOs0N42PHKyrVyMu7faWIwwQVZ/lgHs=;
	h=To:Subject:From:Date:From;
	b=iYbHOYCUXzBBTWCutF3cFs1h6XQ1fcp0xCe8e3yfKnrzAyerGMnSPv1nprWPp2erZ
	 iS2y2R3gTDPD5h0W1l0ugiZXxTh+QTJS8TlDEJtSreVNfuwW0uOxNrWROdRy783DCr
	 b2WilXAXkmjn5uThZOZH1N8fTcjXvU5jMLS4qBCb25PMCRJ7yq07jxSI7qAN4G4Drk
	 98Y3Afhzw3Wk9pR6Ap09VN81rc+ST3xtWjPBWfubqIq6L7ocX296O0HIpSZXgfzLPB
	 6aJQ777zEO1ZZixbqSaUz6Oj0KQH7+pOuVD5YLUgGJO2U/+xaKB0/nb/3mrp0e7cnM
	 QtNCynpIeEswg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9CDBF8E4A5
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 03:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177639705368.507.2692629363558603064.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d0b38f8e6e37a276e1fddf410fdf602b71381216bfb1df8837f0fa459bb17e81
Date: Fri, 17 Apr 2026 03:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776397053
