Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5183432BF24
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 06:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785566434; cv=none; b=kePZMFjbE6l4f1FKLdGIaRMEloybj9SbIpjJM4Qezz45eK0cRJG5Ss/N19ZcDYL7lAkK0OOpj8jYVwu5e2k7SfI098P/Ca651oiNZ6A7DKmkeKFpO9RZlOEs5wSTMElPoofy5BnLfkR7gjtSHRt68L59p7Irpn6800QKWpGEnlI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785566434; c=relaxed/simple;
	bh=Xv1mC7TRs28TQU+ucE6QJ/XKCNwWLIgB3kR6OjQrNW0=;
	h=To:Subject:From:Message-Id:Date; b=LSDeDi4erRpsVxmoiDwPOMNdwbsfSz5Fvt4gf46dojwL/Ngg4ms5HNf9MLfUak8GUzWKy70WSiiRshxXhT5xgWHyV5OW2fik3mbBz02FtgEUkYlUteCxXu6yqW7vTveyFAw+1nobwSP98KyY87FMMyMyAEN7jVGTlQ3bOG7K3Tw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CnPEBOzj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CnPEBOzj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4363C2BCB3
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 06:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785566433;
	bh=Xv1mC7TRs28TQU+ucE6QJ/XKCNwWLIgB3kR6OjQrNW0=;
	h=To:Subject:From:Date:From;
	b=CnPEBOzjM+s9oL4bMaapabMKCsh4jfXjS7VcSPBS9PAkrS9H9jfcpXaWeoXJbbSJT
	 ec3WzhtdM6DOy0U8C9Sb3Pw5xyi88pczte4Z4lmYNiyFGS3JM+47ZoGlWfXL6h+Y+M
	 5+GXFq8eVcBEpbOzCLQ3IvF37lMnGu1guDqbsJKB6m3fStafIrwZW2MguPwk1pERSA
	 DjciSPs2Q3NhyjlGBw7/CuENO2HwPVCBbu/fWGLQStk1HZMQk7Opr1f0XANYVzGxNk
	 3QXfJnJgLjkz+rpiMvIxLH+i/eFaeOkRKhaX8ljdSfNU34Gy+vjjt2XbZFNgDTjzrG
	 2IOz7MvhoAhYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE31DC54FCD
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 06:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178556643369.10040.2439018830906533179.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bfd70d8c773df8cf9357a28d299055686b77465bb7482675b5489a3064ac133f
Date: Sat, 01 Aug 2026 06:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785566433
