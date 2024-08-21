Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D7B33C0B
	for <ddprobe@lists.linux.dev>; Wed, 21 Aug 2024 03:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724211954; cv=none; b=ARjye2rFHCH+FgFcv5x1mHjz1zp0uzwxzmximO8ML5IqkHpGN3DQiVZDQqOa1Kk7TZyW+ZaJ43ukM2N2k7v4NgHevWbb7uDpsuyW9fuSp3EBdTdGpu5gLSh3+d78kbrZiuR51Ldyb7ZxUNeD4JYb0q43sXlDN/N5bMHx4RhAlm8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724211954; c=relaxed/simple;
	bh=qgWwjCE8EAWsowqcTUP97LS4sLOsMzydSSmZ5nk6Mgk=;
	h=To:Subject:From:Message-Id:Date; b=Co3Xz9VfQvKZNRpV3g40lmmP+pJX3OaPTDiW6vcjecjYgf4tuNTbH+sGwSoD2wEHd3p/OaxOwl6be8eEQlyUy6QPc9iCF3gxwzOKAaxU7mYZ7X7fuTuEHWM/UWQ3SHo13I7SdwUdtpMaOsPAehb2twAVBPQ0Y2ZbnSSHAXxAnsw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fTme+DYb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fTme+DYb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1160C4AF19
	for <ddprobe@lists.linux.dev>; Wed, 21 Aug 2024 03:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724211953;
	bh=qgWwjCE8EAWsowqcTUP97LS4sLOsMzydSSmZ5nk6Mgk=;
	h=To:Subject:From:Date:From;
	b=fTme+DYbv3Ng7Ki4Tk4C/0X9I2mZD5xoxVsWt0Nb6uvOHNDLT6K4MGLgJTpqYSA0T
	 prexC5k/aZCspiPQdo5X4Mfs80UR8AxZ7PKrGUsOcE2XJMDrFmXsN8iTv2j3ciCDKw
	 43JGvIxTyB0NsLuuWE5HN3RlIxgIUpnGol+0AmohBqUtsKjpOBHN6GUOKw+iRkzTQa
	 VPc6hpzbAXac36PM7X651U8ltSRqhk9+yaKca8JVFe6MrNCJZdxuzJGd4UHMHP5+j6
	 Kh6HwuNReAbEtXfQG9l+8Fj2T78VbBa8H3bSlSzA4rSmogL0j5hQE7IzfIlxrjM1t1
	 UitHXhuqpqiuw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CB92C3DA4A
	for <ddprobe@lists.linux.dev>; Wed, 21 Aug 2024 03:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172421195362.2245.8125293422674386042.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e925728fbdfb23dc175ba7de8c714cb3e545c7321c74c3d3ff5f0e70ec7050c4
Date: Wed, 21 Aug 2024 03:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724211953
