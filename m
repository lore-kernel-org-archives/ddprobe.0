Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53BE2491B23
	for <ddprobe@lists.linux.dev>; Mon, 19 Oct 2026 14:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792420834; cv=none; b=XuGaGwlpaNFMv0kTWcq/HnWObUk2DovHZF6V77HSbA4xiuolhnViGMKYYXu5lx5e6cAXd+ZovS+meDBhpTetTyeB0cNMc3NnTJMeRtZ+Cv8Qbpgd6bSTLfK3TU7cIJR42hZ3Ta0NsGYaD2VwzY5A4dEPmA96dmUSzyyqob0xG5o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792420834; c=relaxed/simple;
	bh=HNxteUBBnLorbgPfc/qNyYIYmlJ+q2IkLQbqPS6P2bI=;
	h=To:Subject:From:Message-Id:Date; b=fD8q02WA6/0G5x7xgUaazgvOwCc3XLCqQxA3/dW0vP/+jfdOFstdJT4f7UHC8ionr1K6gZEqjahmujj8JxB+IA16PxTp+ZqQsnJbN7mPOIIrQ+BYNYxPCiYKNRFxlIAU7GPnD6M9PFM+i0UBRhpIBlP7Dk+XKodqSaBPkArTqlE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UWivoTXD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UWivoTXD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D609DC2BCF4
	for <ddprobe@lists.linux.dev>; Mon, 19 Oct 2026 14:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792420833;
	bh=HNxteUBBnLorbgPfc/qNyYIYmlJ+q2IkLQbqPS6P2bI=;
	h=To:Subject:From:Date:From;
	b=UWivoTXDEMINgvGXSFeFdU+KjaB5aG4yAuS0K14Pf2wu3LPDBSqR7mk/QHtPGmwkT
	 iAEWafLfzGfRoWkqdeUTp2XkI7spEVmwrBG7yQYKaANkG8QgjZ5dRmqIHg6cYsCqCh
	 ZnkMTXj5YID8TQvi8cd0ExBZOmnMxZM6g2AgTXZrTuny+eF80sddDIMhk8E2u5ELZp
	 Oa87i02RAb3hPajD06UoBlhM7RMiRCD+c4OLAi/cJ6R0r37Gzc0uxwXXRlaUVZRxnq
	 aZPZeNFBuTOkY8CM7WsVDogdx8tQklsnav2CjDTLiwglrchpZg7mWS1wccQIpVI9/C
	 1WaO2sV5WrDBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2ED3CCF2E6
	for <ddprobe@lists.linux.dev>; Mon, 19 Oct 2026 14:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179242083378.24061.900736068129868872.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: edc7619d56331f7fe8e5e5fd445b18af4b59be9820b6437db4fd7f46603f83f1
Date: Mon, 19 Oct 2026 14:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792420833
