Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 61266279907
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 16:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788021034; cv=none; b=HSmaXnySUWNEkcMpKwOfK3NhkXDbbBNRKqSHBoT0BHcqU2Fs5Gq2LtxbZ/V7lNKepGAnOHJ0RAyNFBQJ+zLU2oaxPg5YCKj3w0D8/a4EzfIz8rzOH+xVr5tVr+Tc0SMN06Lr5b4YYmEmR/dI78lrMUDwM6VfcBrq3vf98/lx660=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788021034; c=relaxed/simple;
	bh=+Xv0ZmeMXA8CsGOvKcHDnO8AZVAMvwrRafLgdNzFS+k=;
	h=To:Subject:From:Message-Id:Date; b=eB3UmguF63X/jgPyN46e468qcWCTsMX/5XiwFkUVnVhlCuupphcntAqmmTrrHhIrHSezW3syWTHzCa/jIGU9wSqGv5gZk7Z5x+tehxoKiU/QvmCKKrypDGAgbOpipEDfNMhQUauYaUvi3TNjMa+PWHHqRidLsV0UipJ1FSFxrww=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FJr02Dqr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FJr02Dqr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7706C2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 16:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788021033;
	bh=+Xv0ZmeMXA8CsGOvKcHDnO8AZVAMvwrRafLgdNzFS+k=;
	h=To:Subject:From:Date:From;
	b=FJr02Dqr1+a46A6xZ+AVRIbSb1s2y2NmOBg15Aur0NrFqwsJiy6XtP4HEoZwojSnh
	 xQabo/+B4oeTwpxTpXzs8Pe9WgDW1LaC7u9TrdMAvI3Q0BPcekiwaHcZZuTBlYTkWs
	 Xy9/DTIo9HELR1Ll1VHbaRRujLhdaL6gTdr0iFKU4fXVIaD6t4guxqJWcfN10KcziZ
	 w9lanCE4kl34OyGess2vkUaMUSIcj1QHu0y3TqElM4sLHm64ssQcKY/I6C1A4YnsYo
	 OVCs2mFsHaKAlxyFxiLOj8NgmjyBmpnN98eAyN+z9Rjh/hIX/r82LmBPZ95kTRR1yE
	 Rt3Y2e8L9ov0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0652C61DD9
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 16:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178802103368.6693.5425591637995485245.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e193f65c4b013ebcfd1708a77baa0954a77822e4697a8622780f43133151c839
Date: Sat, 29 Aug 2026 16:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788021033
