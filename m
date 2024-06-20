Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B33C41C67
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 20:20:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718914823; cv=none; b=hT987CP2wChSOPeeXcQvcOnGXoejLwJ7mXlY4LngBT8PwI1HBpujnmJtJUw8I3bbZNv0S/3r3Ug851qZSCyA8AhqNFs6Zs5ZqX4x4VsFnRLWBOe2tTmY1PHZqgeLD8BOatE4lPtifNB2YRrBVFEHHlgLKD7lJ3ifTOIRUH3tIio=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718914823; c=relaxed/simple;
	bh=UDQl6e9zzGTKwXdykcbWSErdBLU1WuNujBjlOUg40Qk=;
	h=To:Subject:From:Message-Id:Date; b=EQ/MXECBbj/MC4+KNIvSoJOlHcZu+omMOQ/yY9yENRvke30rVqi8zDmqqGAl/dDiQnyMpBlDTFiFNjSzBYqtrfj/0OSF7ScdwJXPFa4AqSo0bJPgS/ASlnpX+KUKNdUK2i00UVRiUKyD9vOx5jSPo/zB5FPaS/pRWfXU9qOqu9w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QyB5A7ZG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QyB5A7ZG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9F73C2BD10
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 20:20:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718914822;
	bh=UDQl6e9zzGTKwXdykcbWSErdBLU1WuNujBjlOUg40Qk=;
	h=To:Subject:From:Date:From;
	b=QyB5A7ZGcT+IqgM8jt20/eeJWjNJtBk8Nm6knD18RXfe4m0e0Fbu2OAS3PnMDMM2n
	 6tt0XxUer6FToBg46uw0Ne30W3BtAOk5LVWE0W2vDme1EbWFIHjMsCvglDNzTHmQPu
	 mJR7U6YVsXR5Ze4WCCfH41RVTuu28zOGcUa1fyIT+5HR+BSqTMOKgW1Oiphv+nb/gn
	 r+TOtMWKmtx/hSsJ0hAw2Xn2GqZntX07FZs8U+hqKTmL2/t1Wft4eksWebsBEGRwlf
	 pYNHu8Sb7308+BRzcRJR/vUSlU571EYDJkXKjsNNKRfRXNro43vxzVYfpSUplQK8l8
	 H36PpG0LnR01g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C94ADC27C79
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 20:20:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171891482281.1187.3708623060674858028.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5082d122c02506f237dda4fcb8d0405657620aca07fbd37cc950d24f078eaa21
Date: Thu, 20 Jun 2024 20:20:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718914822
