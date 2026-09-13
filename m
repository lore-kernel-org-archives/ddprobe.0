Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7905C368D4D
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 23:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789341034; cv=none; b=ZTBnP6GfQaDGzf19Mg9bq//AKimNwNk0qur6PIIDcFFfODmnTdtjU6kbaE3l3DzMpenFMRJWy1bM6YcJHV2Q5l308TsPytVI5FPWU1U4WgL2JNQ1e9hNRNialRH8MKHkXxjPgohrTO8ePyPryIbN1uaBwXHPJIJkKpuqmcndYww=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789341034; c=relaxed/simple;
	bh=VFzylBOlwgcYY62+MtR5YZlMWmnaPsmQCp/P/MI9gJ0=;
	h=To:Subject:From:Message-Id:Date; b=mjCvskXP3f2Ty6YyaklN7tReLZprxOVMbMgpDhXuvgZT5CEnQwF8V1gSxFKx7WnqwXA+iktgMafiFJZm64wVam8nYffm4TQ7YkDBnLr/zHNrOFf381Hyti2LLUP7WHvKwdTY4NFPh4G2nXCQOOdd1CB33BbPtwCuS4ZOwfQX4Ug=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ijILU2Yw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ijILU2Yw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D473FC2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 23:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789341033;
	bh=VFzylBOlwgcYY62+MtR5YZlMWmnaPsmQCp/P/MI9gJ0=;
	h=To:Subject:From:Date:From;
	b=ijILU2YwhPWwynI+f7vJh5G3A/cWs/0x+TbeUW3eHr78LT2eEFCWg1iiW+bRFTLvL
	 6lWPlzMTvbBRI10+IrYt84rgdfT189WoJSCvIbbxvyJ+N2Bmkq/SZNv40ulxfkFoaB
	 Ljh3JZ2ht8dkunNKWtxymkP6Nq7aZz/WZ2OD8xoHEzaGqRU6s4I8IcBrfsAAlPD5oB
	 hR5BM5V0X5yI/n4bdEZq/RMujHMebnWZ9Q+j2lJvIZP5PDVfCa/+ADCducwrbnF1E6
	 oiCNIFk98XPAkV0fU+2O+2nFT50rjIfIlhHxGc2QID3Wd9tkxCI3yRy/SYpJykacH3
	 yVw3uOf+JHvzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEA6AC88E5C
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 23:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178934103369.21447.17875694079430946094.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d573e1a2dcdbce016d46af5ad3a7816daba8a9063660631874cb7be6789b103a
Date: Sun, 13 Sep 2026 23:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789341033
