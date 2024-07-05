Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7F53D1459E8
	for <ddprobe@lists.linux.dev>; Fri,  5 Jul 2024 13:55:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720187723; cv=none; b=uA4KNU1AQKNOq92KLuFxhB5UsV8v85VDbyfptuYuWeC9SmpYDt+pY1xJ9BTzixlI34UIA7ANrkSe7LaYAzOauQWi/G/QiHtGT1qY7772yOClsDtKjfV5qDYiDizfAvzde0ahmBO4JLTb+A9xKp/KkiSL60RIKF+GCVW738l1xZU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720187723; c=relaxed/simple;
	bh=8r0JQ+Vr+kbeH8WCWzQM2HHRwQV4TPl/7zpM+gVhf6E=;
	h=To:Subject:From:Message-Id:Date; b=mpUc69BeoTiL3eRxH0Z90QgUFWzs76BmALqWFXQMDnaDrJFEbYSAL/A8n33c1ETH8CTiY96erDSaHMnVRIh9CrNdnlFUtS1MqnuLqg53cxEA0kyKQpNN90B+lIkH703bueNgt+YUgzW6KafWEUkx8GqGGSnBx9cYDP1+qAtlvpw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k9M3exLS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k9M3exLS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E8B06C116B1
	for <ddprobe@lists.linux.dev>; Fri,  5 Jul 2024 13:55:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720187722;
	bh=8r0JQ+Vr+kbeH8WCWzQM2HHRwQV4TPl/7zpM+gVhf6E=;
	h=To:Subject:From:Date:From;
	b=k9M3exLSW4DJLoKO34sLhQS3+Q+9A9QvmWGCzD3hJtcL3IHrG29zENBmJdTs+9mV8
	 tA+wXLLCBe3XIfSEgElKMVrMVMLIFUT1EHVsPHWnPUe85C8t3AwFJIQYfPnmT/Xt/C
	 EeG8pVjShOtMN43jnL+xZNTYmRaJuWlRemBBm/X+BIO1l1sTb1k3p/ez2sSidreOSF
	 1+hvDR1O26Ln2bEkSBTlEZ3QJH5foMHohxE5Lvju5qsHd7bWnpEi4A3Xw50lilfse3
	 1MlWep3aJNdV7g8bx2rA3TTxfykWn/mEEQiBAELWsYsOv/JPCqmOiwRVLFjMue0yHz
	 LxslmB+oNAp9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D3545C30658
	for <ddprobe@lists.linux.dev>; Fri,  5 Jul 2024 13:55:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172018772281.14509.3256954433996073486.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0aa6620c97a3e8a15af9382ce9fc88b6550a6a3cde55743e8058cb31cf6d8270
Date: Fri, 05 Jul 2024 13:55:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720187722
