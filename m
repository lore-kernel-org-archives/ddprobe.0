Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60FE11847
	for <ddprobe@lists.linux.dev>; Mon, 20 May 2024 02:22:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716171743; cv=none; b=HGDY/sFZxNYRF2QubUaqPFbgIcPgTElVx4hMLTXhWHRtDmCspe7bScWaEVbX3cXveeimLg/Sc0neXnXeUBtAFwPQT7eZ34zo7osFoQv5YPFgYWq9KQNS0zO3JoDOuOcTM5wXjq9mghDhph/gJIdTa4/Lxu5+PQvUD0PJev1VKnQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716171743; c=relaxed/simple;
	bh=gQLqhqJKH9kkqCvVlR152ptL4dQKujj+OW9NWxJv/X4=;
	h=To:Subject:From:Message-Id:Date; b=Ahst3fD5GLK9vZm+QKAc0m0ITol8TofTcyqb7D4XNBFJWkGchC1HiU5dsAKe4QvWgWFTFZ8Ljy6ps6FSlkKRRJ6dd/RVcIQylLHcY3obndL1xOuhT3VgGCyvqb+Zn+fczAX4QqnFvOV10G2boJJU3hui8+Nbt9KYbbwOVEgNtQ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GFhiNcRI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GFhiNcRI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E616DC32781
	for <ddprobe@lists.linux.dev>; Mon, 20 May 2024 02:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716171742;
	bh=gQLqhqJKH9kkqCvVlR152ptL4dQKujj+OW9NWxJv/X4=;
	h=To:Subject:From:Date:From;
	b=GFhiNcRIH7Pz4Ldp8dS88816spWZfuvec8Hjqckjayr5k46X4/29RvgKVmHBNA79P
	 VT/rBo7+EMgPOmoQKSPr3BPGKgSeFeWnsBgzpL/CmZWvnSx5LVgtESwq9xF3W/R4DL
	 HvKJDxjO0Fvm9Ymff2H3dHa1rlfKV80/eT+04M9O4OGxBnz3uA45nOnRowoCGaZTYD
	 dGd/Knp1eDfr0FBVbnP0vXQLg7FtEkdQrP7qkgUonbh13u2R4DhU2LoiQFK4bhRyFL
	 O+c127R1/LsDHF2ZAzsRVpPg0hV1Xoq30YkGOhBh1WPFvwPAcpw5s/ZtrOsQRwP5cN
	 rcy5OjSZ9I69Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D0138C25B79
	for <ddprobe@lists.linux.dev>; Mon, 20 May 2024 02:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171617174283.25882.6726105247252997697.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 622ea22d6165083cda5eb53099d5896a1c37108f451800cf353dde84d343a43c
Date: Mon, 20 May 2024 02:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716171742
