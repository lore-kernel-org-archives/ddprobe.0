Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42A3D34750E
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 20:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778098054; cv=none; b=p6lRpSIAyshUeL/hNFQzcHAQ6s/ghH0rgI2DLonNM70CQRFgs07vrmAS0hwWllIgoGdVIFaGWhrBTqLu25Vkcx7b53TUXLWI/bzk8QNct6/UbO81xBmKxAnFS6FpDzIjPDFVSia+TEOQhUebejleOUYhQjNDj44KVQZuMfUkE9U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778098054; c=relaxed/simple;
	bh=Q1wec6SB6xQgG/M1vztsN/Cy6iAy+A0zitgOHVRvqfA=;
	h=To:Subject:From:Message-Id:Date; b=VEbI6Qxj2CMYo86GOgAGrumycUN1+iMpQfRe6TrRQ/r4/T/wgmngSCEeAlqFHcfBG59UKriA2jbRfigffup/pldKR7sKhjkQUTtv0mzMboV+M9xeD/4t0Qgs58BrCA0OtLykdmKiJ2UtsBAs+XWaYAQlsqDn2HbIoRbA8pfJ1mE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Af4oAqdg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Af4oAqdg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BFEE3C2BCB0
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 20:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778098053;
	bh=Q1wec6SB6xQgG/M1vztsN/Cy6iAy+A0zitgOHVRvqfA=;
	h=To:Subject:From:Date:From;
	b=Af4oAqdgETs/q4zS6yZZJR7Vxzyp0juiNCTD2HJ9zQVpcrFp0a9EZnL6xSbCV2N2O
	 Y9eLiOHKXrPki7yL5mw+lulk1qL881vtl+8C8rBspsYJ0jMQL6GH6zk2Ab2EzbPEHp
	 ceNSojlsPseFE+MKXgUXC7Hy/O+dSd1j43O3QALZWNwVAtBHQyZmV3tmhGvpxdosOg
	 LUtjxxLDkLdKKyJ0qVs4UTDP0ZfckGWCoMvLDNKB8ZChklBzJu8NGetm5Fz3+bYiF2
	 SOp01JMnQyUUhUwNAN8EkzJ1hkPW8clBmYzTwXKXtvZeJ5XCTYhgz2+GWDTW7JEd2U
	 vbvTOxf9eP6uA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC5CACD3439
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 20:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177809805369.8135.7922750357102913462.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 77a552def2bc360f3c7c0a501c226ff76267243c965569f682c88a0242937d43
Date: Wed, 06 May 2026 20:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778098053
