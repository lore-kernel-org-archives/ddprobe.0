Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2584F27B335
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 16:39:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763224795; cv=none; b=AQkMhJweyP5eK+p+Sm63eAH+2/mItYBtb2K9E7LKYaBX55F0R2BVPxc3saWJq/OxSakpzGDTrsEg2BwD1BbkwUuUdGpCwt1jXEmp6rKAXTZ54asOdB03lFkUB5pdi/SvdvlI/o8n8/vhPAF4+9POKIwh6EywS6u0jBVSZf/yvSs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763224795; c=relaxed/simple;
	bh=jvTr+IMB2lTM20yhvP42wn8RONfsqtkNUsKHmEXgXgk=;
	h=To:Subject:From:Message-Id:Date; b=XEG4Or55JouN5W5hNhnJTFdIl6IZbU4hgEGdFwYoakMTwhp43vd0qZwrl6HOgcDUMDIpTOdJ5tnKtrqOkKiyDNaM9wPeEJsHs64nfL3Ss7YBMYCDstvQbfw1/+P5TS+FBdUE6vQZNaXD16Cgua/ji5QvvPQX8r25TdB7d2eYw7c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uoVNrK/m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uoVNrK/m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 87198C19423
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 16:39:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763224794;
	bh=jvTr+IMB2lTM20yhvP42wn8RONfsqtkNUsKHmEXgXgk=;
	h=To:Subject:From:Date:From;
	b=uoVNrK/mgdIoBDZaADgp7Ta+nJWDZK22FrHe9CDMNtuy2DCmWejfKpeYoeegj3pjL
	 qmsGOKBe89tWZMQWxuG6y9J5Ia6QeVVBCcMJfQxkXzBFqjnLey8QBjlbe4yN/y0Ht7
	 epp5BYlfPFPTtyy9tJhxjYEupMHRVkkpBQLQCDgEHB0FehTPTj4/asbxrKK4VLTLNN
	 tbHkwvrJc6/wi1zceiSYQMLLz1qFmE+kiaGc2RwfqTlN/QK0DKi0Qmf1FkbtAvPxBa
	 nFSAJNgiMC/bys9wp3RVhJsmyZXDoGa/RAMpd6Y2eXA80WCpd+nYghgkpYv07deuWG
	 zAtzGPuSHLeiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 42BBACEB2FC
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 16:39:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176322479422.5277.2423167768757420171.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 91ea31a134df37238a3f45fe3fccc3cec8ffc6bef02ace9f0826a22f4f435410
Date: Sat, 15 Nov 2025 16:39:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763224794
