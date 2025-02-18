Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31202174EE4
	for <ddprobe@lists.linux.dev>; Tue, 18 Feb 2025 10:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739874534; cv=none; b=fEmDcgKhhtivp31rllOTOFhXN4gOfOoBVGL75BbpQ7cVdVtxqFxEoD/utPrIaIoD46LEkD8aBezvlBEO//gaGMvjNJGNYt+qQpV0DRSkzDlMsZZHNomDCNdyNVLEbF6oHxMqAJSymWf/IsaC6pJS3XwBWph2l2Inz99/cqutUF4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739874534; c=relaxed/simple;
	bh=cQ4NQUQD4R03cePmhpiSLxU+R6LC1QGwrAPWCuZhaLI=;
	h=To:Subject:From:Message-Id:Date; b=XojJtqtJdkk4DaME25e7a7sW6+ixuQPOX0nn9Gu2UdocYZkpPabwFH0yM1C0f0XLaIl3hpUtCBziDfa/ERl9HvLEXZ1HfNJqpt9MH64hjsi57MqYD2ceess+9Vp35I9Q2Ejdsvy8V/L4z7cvZ3rC65T/VsxvSYMIcg+p+XzzPzU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nI4W7u5E; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nI4W7u5E"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F5FFC4CEE2
	for <ddprobe@lists.linux.dev>; Tue, 18 Feb 2025 10:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739874533;
	bh=cQ4NQUQD4R03cePmhpiSLxU+R6LC1QGwrAPWCuZhaLI=;
	h=To:Subject:From:Date:From;
	b=nI4W7u5EyAosiUpx5ahXMjfM36iSER92n9odvLVSB2/qBLGg27uY+W0F1LPYTOdV4
	 SMUO6vXJumUO4pMYk9Jczs/ck+4gvxXxUIjln6QRcVY1mWGCowMlXQ7itmDduUjoQj
	 kxgZ7VYnh0jF5Yi2a5BroMbM7EjKBEXQovXoYxgUQ8+1Dl8p9Qb2cIBDCQw7Pz1quz
	 SeRij+mR74KiP3yXBL+x+ZjUXzZikLuMBHjzm97jb0gjrTgXIbEVwrPnZT86QzlPQp
	 T8WaZSoTd78PFLMnB5q6u5UEc2R9eRtGyRvGHYC76W2I5XgpDG89WN99xrjGSKKzaM
	 HMu7Ia5ga8Rnw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91011C02198
	for <ddprobe@lists.linux.dev>; Tue, 18 Feb 2025 10:28:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173987453358.9684.11796273738618556025.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a6c163a3c0d99a99b35a7feb75edd676cb881c87abfe0eea38bae5e1c28e5707
Date: Tue, 18 Feb 2025 10:28:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739874533
