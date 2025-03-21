Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 499441E8837
	for <ddprobe@lists.linux.dev>; Fri, 21 Mar 2025 05:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742534994; cv=none; b=D+i6qxX1Mb1L1IX3b1slRq4AD0ETBXQ3W5L9wJx3ckHbipL0WJVVMyOljek5E9q8tnT/r2Rs7/8qqAJ6xQuJGmOg5DIe4PcjKPFq5iv0e6UVKB6JKUDxU2e29ZfSYd7NPQXgEWGL6agFa1eMlPfzpE3M4UiFzTJLB2qPMo2uLjg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742534994; c=relaxed/simple;
	bh=Xtu27yDJMOmkJC9LNkAXc4rnC74V0v6jMJBt/FF6ZAo=;
	h=To:Subject:From:Message-Id:Date; b=aGRnPTjwlEe0n5WgrFoiDjxmvFd07r8tQ/tBMCrn2Nf129dyMBlhOT4UlkjokmAwS17rbIst3p60oz7rdWGu1EsuV5LIa1b/c/1BUfv9GHnShRQe3Q1TZT1OBFzdSeKSA7vg9tfDU51wnnoaQBfmQ0fnJni9wkAa9slZRm14qMY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Fx+39f0f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Fx+39f0f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0F7FC4CEE8
	for <ddprobe@lists.linux.dev>; Fri, 21 Mar 2025 05:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742534993;
	bh=Xtu27yDJMOmkJC9LNkAXc4rnC74V0v6jMJBt/FF6ZAo=;
	h=To:Subject:From:Date:From;
	b=Fx+39f0fjMMjiiTUG/B4VsA4RiUBxFJAeVWRUXUAnNTV+nYStyXAqBleQXdg/3/wz
	 VG0MxrfLU1E1ZYJhsJVCKLl0sWLbFlZhvhRi1i2nJYtllO0I6B0AZxjjjCxpJbz7Cu
	 mqtNijOgWRRGf1hHgCahBkvO23Jr2S96FfJTHWyHgyD8r/Z7bVZRCWzSsM2kZ5SvSo
	 zBzxkmfyu1S0iHWhNWKmNrpZe9JWq2m0ZYHg4kT4gM4vSv21KbsMwdcWekKK0azSNK
	 AtahkyaMNd4XkzNAtUgC4ElmrEHwcfbT6hm11Cvgns6T5rSJZCaHhrIGJpv27rghsC
	 dCfM/ur8Vg07g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A480FC35FF3
	for <ddprobe@lists.linux.dev>; Fri, 21 Mar 2025 05:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174253499364.16566.4084345605539466817.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 059fa019459a8923fc08746bb0666a42bd4894db7c963639d5d2728b10f0090b
Date: Fri, 21 Mar 2025 05:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742534993
