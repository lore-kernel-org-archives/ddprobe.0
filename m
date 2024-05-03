Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CD0D37E
	for <ddprobe@lists.linux.dev>; Fri,  3 May 2024 20:32:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714768343; cv=none; b=csV8MRn8lr+SnsmF60SIoDo5ZPj0aoLM3aNd+4WwG/Klmwb6f6ZxFlOjQZYDULgkuzX3yHI2rDJFLkVNTG8EZPapfW/MMm0b7K99l+obmqcnl6/Zmj7YQjGL+GCPhCuuPY1kGES7fOuhVdU01zeFWc2Wcjvm00eFhclYVw20cPc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714768343; c=relaxed/simple;
	bh=uRdvuAyrmvnqNlIH4kWKbYj2SzKtWbe9XpF5TJZ0h7Y=;
	h=To:Subject:From:Message-Id:Date; b=jLBKATMz1rTfHlBtX4cdw8rCWafpSfPxqIE2j3q/ZS+dtSmksuwv9RFQthnxtOQBLJ84cLcvMUIYTnwbhrfUFmTUnRtCCFR7vOmOBo5NH9HwUMgmjCOc+fLqe3t+/QfZ6T4+E4bHPKgHxsUKALFn3G729e0DStPVeAQvdmHC9BE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iY6CnSXO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iY6CnSXO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFF48C116B1
	for <ddprobe@lists.linux.dev>; Fri,  3 May 2024 20:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714768342;
	bh=uRdvuAyrmvnqNlIH4kWKbYj2SzKtWbe9XpF5TJZ0h7Y=;
	h=To:Subject:From:Date:From;
	b=iY6CnSXOszBvEPlIMLPzJA4dXHUKLikALVyqG9Ohb3JUhVmblKA62lUsJ7P/wvmUK
	 xxeZ+8jWP7/zol+e91HmmAMbKoI/kQCiEYw2cMiT4j4ISJn4dXRMB28Uq3PVN5g8jB
	 CI6XDdxDbhHmpB7GzIDOflPYauAGFdVR48Oydxo9rWjCNfsK8rN5Kzb8SfCOAl67vA
	 swCBdb2vx5ri3QrlqYGqe5XxlattlcXdnncphBxijxNhSoWGin4K/PtemuJX644Evc
	 DILg8LxYjuTy8MbNrJgCbKLS7O0MDbP3KmqKK7rdPyfVaNAKTQcnEMG/IaBFwsFx4g
	 zQW335WqifNpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD680C25B5C
	for <ddprobe@lists.linux.dev>; Fri,  3 May 2024 20:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171476834276.7740.12531368016731633951.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 532f90643baf7d434f535495fe91977891fdca8a8ecf04d564bafa5e9eb36933
Date: Fri, 03 May 2024 20:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714768342
