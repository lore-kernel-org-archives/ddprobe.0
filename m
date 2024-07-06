Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BD701367
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 16:16:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720282583; cv=none; b=UozoWm7rzOLrvd2DFMQQJ8w/d9rENd5naEqkTqDTf6aCKj4U3+jrNNVe6AB1OEBicU/UpZofHuE81At6SJgaxhEJiP+lT24eoq0JDSaUMe0RJ1q/wy8A3vQAqVTXI1Dzyh1PgJ+Pk85CixrVBs/pZWAKsqM9cazpb/AbLopFuig=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720282583; c=relaxed/simple;
	bh=C9FXKnt3KmSKxFLqa+23cCpbhgmpV2i+aSE/NlDYLcI=;
	h=To:Subject:From:Message-Id:Date; b=NINWde9NrcB3QqP+qbAFQ8UHlCO77/TOiCSeuNUCDDFxVMsPVB3zt9da4NJn+rHbnEXBE6AVbAQY+z7sam5hnDbHbZwXrofXb21qzqDcg7wLbpxBkWuR2zLNSduGTncLiof3M0AFoVRgOcdUIUrW7OsR/MpgNtsEZXdrnsEROrk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PnWuWC1v; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PnWuWC1v"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC68EC2BD10
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 16:16:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720282582;
	bh=C9FXKnt3KmSKxFLqa+23cCpbhgmpV2i+aSE/NlDYLcI=;
	h=To:Subject:From:Date:From;
	b=PnWuWC1vq+4Gy/A8KtLrPKI5JUyvfPl12M+ZfJUWY8pPKfCnszJgGqKdnv1LdQ7cF
	 2bIUcLfS/OBiVjjgKITNyTCam7PTEXOo1TsNQhav+7jNe1fLFmMK6cm0/sxu9OayBF
	 1MKHsUeZkgbcRwHsPgWhBjJGDgSto3fhEPGNa7R8JjQLQGOe2HcT/RXj0l7OYJdLkE
	 BZqSCep4in/mMWnpwbUN1spvYWhZP2L7JNvOdDUePI9193hBfTCfAensFtqq659Ej7
	 awEDTeOFs/ej26LFnnMDSyZjQCuXZvCAsVoghcY0snIscf2qBpot+VCD1B5i3bWpoO
	 1ovuebrsjtIiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7C56C2BD09
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 16:16:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172028258278.30678.7553394696070701310.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f74e164e0a37fb62efce4c02f332ef620509d062dc9b9e069b7ac477528496db
Date: Sat, 06 Jul 2024 16:16:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720282582
