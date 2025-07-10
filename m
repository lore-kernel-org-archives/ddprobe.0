Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E93B27F01C
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 02:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752113994; cv=none; b=RRxZhrpyZ4pPdocphCVqx+qRhkGCpuWtFYAGGl/kz2gRs8Wwuift/bcDKqUIZD3wAfLPDkf46I/5kUvKVxauxSw/YmmY/QP3lXnTM0bfZYnua6Xst/VwDMOXf42HPtzvz6vZGyRsk3tp2K+6W866+Ird0uVg0667zw+YXNAsb7E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752113994; c=relaxed/simple;
	bh=Vi+cntsjuhDV8H8lDrOuoS1AhUrXk0X4D6kCaCIDCEU=;
	h=To:Subject:From:Message-Id:Date; b=apWNHaCvKiEOIty35nUWVaHLvOxvtJcc23D8MVKIvGvSC1glNV4OTqbHhQ8x0+fG6IZl5AznCng9KVaivvxgH6/tuZHquadj6agOaUgXZO/8V0odfws23ZPW+XmI+fjbtKkBDHcapRius24pm2e9breesqR+O4WK4vNNm8xyYUw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J3WUPzT+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J3WUPzT+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1D9BC4CEEF
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 02:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752113993;
	bh=Vi+cntsjuhDV8H8lDrOuoS1AhUrXk0X4D6kCaCIDCEU=;
	h=To:Subject:From:Date:From;
	b=J3WUPzT+NrF7Wwa53UdOI6XgPVrhVencX5xRQVUcwiqwDnGvte35Ag0gE1XiN+zUV
	 WwF+DtZDWrsfCZRhlO2lyXymZsOIo9lrgLUi3rjdgismd9SqO20ZlvJMvLaQZ3Rk7i
	 3OYF7kO8nEieuA01/4uSoGTss6zXCXXpSi7H+uFikopF8AxW62GRlq5BfxvmC89vWn
	 zO3Ceio2Td9UJUmK1Yih8px1Ft0edadnrqXc6FZyIk4/eLZC6gjbD5WiK+S2cvgQ3L
	 D46ANCW9PijeSxnSAMmVjUgYRdVEI8V7QiNOpkXFiHYSgRXTCklMT4RfNcR0mEhYd0
	 pQ6JVrNfhVBOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93F70C83F0F
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 02:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175211399358.23056.3319353939720194289.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3257385c798720ff0ae377513515dea2e797288dd0ac8de867342f2a9809361a
Date: Thu, 10 Jul 2025 02:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752113993
