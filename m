Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53CD4654
	for <ddprobe@lists.linux.dev>; Tue,  2 May 2023 06:04:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id F30AEC4339B
	for <ddprobe@lists.linux.dev>; Tue,  2 May 2023 06:04:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683007446;
	bh=G7ReWJzrajOpZ/M2+RBZ1NfuNr0xyVE8onAQeDAkNUw=;
	h=To:Subject:From:Date:From;
	b=WtpW7hftB4oH7EQQ88NGLtGHtVi5r2Rg7qafSrBAeQ3oVPkhwRO2UQchz4/l1hbsw
	 zarEnCf5RkDVpnnNbvat0NGMUafjI2FodtCg9nw4MEjRY3LeS+eBKuiatTHD8f8S0e
	 pU1j3IFRmVTVJAynMZF1t0r6HsupKd+sptA0px4euujdBuEbQjEfPjwGFhPol0lZW0
	 o2AKnjKz0CMzPowKkcVvY/eMOecwq/IyOVpz52AwPawvFPIJx7Hy+e+5pmyevs/b2o
	 mIgZhiFZu16vU0Drd/Cx4HJFhQcyhIeo8OBufOcxdAdQlvoKo2hUC3H3FnkixDgV1u
	 Wliuuo97WAeyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D1565C77B7E
	for <ddprobe@lists.linux.dev>; Tue,  2 May 2023 06:04:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168300744584.27929.9710752120516251382.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cc3bdd02b6b758204efacb743f7a451257b064764d875904f2cb9845c4e651a3
Date: Tue, 02 May 2023 06:04:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683007445
