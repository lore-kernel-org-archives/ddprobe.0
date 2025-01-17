Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2711618C900
	for <ddprobe@lists.linux.dev>; Fri, 17 Jan 2025 15:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737127554; cv=none; b=J9x/Nw26OCLgr+jhUtX0aJaWH8Bt8Po0jEMcEXjhiBOZYOb6WbHsaXWRrAzE+qJU199Fw2zTei2qe77EC10a2tKv6JKo5bVLL384Pd3YaXl0yG7y6dJF8aODQ8qgY6dEFD1O0PiSPMZkWA/dto3wZaxXKnX0IJrnWp2iA8bO1U0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737127554; c=relaxed/simple;
	bh=SsAgpXHhFDwv/lCsu70w6rBTzYAqjM9c1m6inWPMlrU=;
	h=To:Subject:From:Message-Id:Date; b=JF4cE3cEYmGdjSmt91Ori4ZacoEuZ9IBQ4B3UyRIpn2nbi5xCZ8nUBJJbpcc4v0IDwnZoPK1Lg6Zd/t4s+1ikLp7Q8l+TrcB7i+60bz0NX5jac6ghb59X/uyrzTxs8Mg32UcMynwNG611JNSSLE7r8nR2rWp2fEB0yxEoAtQoWU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pBjefU6q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pBjefU6q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7FF7C4CEED
	for <ddprobe@lists.linux.dev>; Fri, 17 Jan 2025 15:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737127553;
	bh=SsAgpXHhFDwv/lCsu70w6rBTzYAqjM9c1m6inWPMlrU=;
	h=To:Subject:From:Date:From;
	b=pBjefU6q0/9o4rz/ZpxrEf4LThq2vsmDpPZAl4qe0YGfHE9W3PNbq6VdJ1p2TXAGq
	 onEHdm6YuukbWEf8CZTMbSJqeXUVaEgaK3AxOSPrNeZQOATWPNMZpbbZVBcz14WPyw
	 NDwjdg21UCBv2Bh0ezspIgJTRr3DwofceTVAMHewgIFw29ortXY+lXHwxYk+Q79ctb
	 AWDQs+wJDm6bTdN/KeEUats5r09Pm79dGlsU5u7yMZIKL5XibEvvOlgxZXQ1OgdiH0
	 hfUzSrH2h+vxoTYg/QC9BHDqbIZvfSX0BJzbdkS0p+xmqnn563GZnCHCrubMb/s2l9
	 l/knR3mTvaGrw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94FF9C02183
	for <ddprobe@lists.linux.dev>; Fri, 17 Jan 2025 15:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173712755360.15947.11014184495689120974.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d27885152cb7c1bdcdcc10008952db72df1297180b616af7b4f480ff980b2748
Date: Fri, 17 Jan 2025 15:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737127553
