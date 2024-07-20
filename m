Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 314D32B2CC
	for <ddprobe@lists.linux.dev>; Sat, 20 Jul 2024 16:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721493954; cv=none; b=FNpAGiIA0BZzCrJneHHW8+emuGmOPkZFayLtoBrfcwu7IIgMYm/4lOhUK27SBo2Z76Sk9/dOMWZEklZF3OpiOc2rf+stXppYYNvOoRDfVSw7+1JGsBrC+ZU3tOC8eUxopdeei5l20HGP5I/IU7TYbHMAolMUjlM7+uS1Qv5H8NU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721493954; c=relaxed/simple;
	bh=YscNR9dcvqUMFaoGPACBXKtKl+Ql5pHMlR0krko+MII=;
	h=To:Subject:From:Message-Id:Date; b=ll2EZhm4Cmq+bqQH6WiXfU2rApA5Ak8kuD/LtfqCdvSjN5M0jZVLsxHDsZJnMRDTDgJrRMJVSsUWZQ8hbi8NlzDCnOgMmZXvclBrpg6LHKOv1GtecqsaBA8o8cdOZyECR9X9XeXrL6BA/yNbe/P9HFusgJ3g1ivc0LspMTTzqrM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hRQdD1Rz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hRQdD1Rz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD315C2BD10
	for <ddprobe@lists.linux.dev>; Sat, 20 Jul 2024 16:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721493953;
	bh=YscNR9dcvqUMFaoGPACBXKtKl+Ql5pHMlR0krko+MII=;
	h=To:Subject:From:Date:From;
	b=hRQdD1Rzqv0XpH1eULWxu9rFByJjmIEUZnNS1SGISjPAZnnZVey5tHChas0QFyXFc
	 ne0xdoZI4apJZNil6OxjwwSRzbjVqsjtR/2NYgTCFnY04Ehz0NJ40oqujydbgZBGvp
	 NifnN//R5N7ab0h3faurEED6Q8mlB0q+ZaHrvDa5ZN3lM0OhNlM5OB2PdkELFmEV2u
	 Rr6mn3hyi+7OTUYy5di3DHFhRdUXt4bQ3ZbYftiylyqW0CkDp7OkISR9mabAuak1AO
	 MvDQSp172qCKHzhZowA8YhMpLd2XfZrII0/XeDBO7uDW4Xn46tn1w6t32CdxCtfpDR
	 3C8Rpc41R+/zQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9975BC3DA49
	for <ddprobe@lists.linux.dev>; Sat, 20 Jul 2024 16:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172149395362.20987.12503143907524245455.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dbf3a9f856cc5cf243971ca3b0b04ad5e08e28a121ca21b1f108726ad9286dad
Date: Sat, 20 Jul 2024 16:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721493953
