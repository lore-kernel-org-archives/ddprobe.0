Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3405D72615
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 21:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746568794; cv=none; b=TkPkhE5dYzEC2Dn23hXfUEutTLdNBDUA0+DCSF+2S6/bynPQe4vq7PoQPXRyAIAbMjvWLD0Qi8qdAzRRXIaYio56FbpcdWzFIAyL3837I9wYdxyrYN54mV7Z9LQjK/AKNpR806i6OUfIWZ3WzbhZuhM4AK3jaHeZrGCBPKrWhcY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746568794; c=relaxed/simple;
	bh=XHx+5UKict3G0O3BkDKHQg/pZfOPwMwEwV0+iuBdAik=;
	h=To:Subject:From:Message-Id:Date; b=MMht+KL5a95Yc1aGTQ6WD69EwruMawTKSzMNDqnHSnw9UekleVBhy1D/3MQaVJyeKk2sG0jIX2XiNV06EQR1rV27tdc4Kj7ySS0AnSY5xVXy/q7J4yKHHOBcgACZs7VnalaQ1LWvX9kpdvE5/WVNBp1Qzwv/mOxMIA9JwijPfco=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uikPddB/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uikPddB/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5316C4CEE4
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 21:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746568793;
	bh=XHx+5UKict3G0O3BkDKHQg/pZfOPwMwEwV0+iuBdAik=;
	h=To:Subject:From:Date:From;
	b=uikPddB/meyql4oa0X9pe1T7DLtUQHqk56GZVg6JB0JFx0vfZTEirIlSlZubvniJp
	 E7JfR8R32o9WIf1MxeOF9ynoEgYzNyU++j5sn2z/K8qhbzjRJiPSUttJ7LT+O0DNyy
	 Ibog02hnIC9omeq24cmgULtGrz2xc/19J5tBQKk2xh18l+BgP5ury9iA3Zkn6dx3Hb
	 R9tWAI3vP9+8EN/rh//PMroIyBCp2ZNv7IlkQgvwMhnF41y9Zr2crFcwPDBOORlqHz
	 YznvsT92ewNCq41cqd03TaGNK1F4CrwYe1u/m4TShG3C8m89l+YJA3IWjK9sSJQ5xh
	 VUyTz06G+fRtw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 913E5C3ABBC
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 21:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174656879357.29761.6861121874709338194.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 872aa6f9857e5e6a9b55969f894b8ae73cc1e5f0f97fc92ef16e936fb101bc3b
Date: Tue, 06 May 2025 21:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746568793
