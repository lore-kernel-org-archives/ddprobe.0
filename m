Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E0334122BF
	for <ddprobe@lists.linux.dev>; Tue, 22 Nov 2022 19:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7ECD4C433D6
	for <ddprobe@lists.linux.dev>; Tue, 22 Nov 2022 19:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669144854;
	bh=1hjlgkLsAttM079+W93Wf9KVkIPvu0FhncgKlUI1oKQ=;
	h=To:Subject:From:Date:From;
	b=IVlViKAX2AkRAyU5HcHrunH1uoiQ+Aocq2gvRyeIcTOsbojLl8dmw0Hs6wF3MZx/B
	 LslHP9x6Iisbq7WZ1z0hSPjrqPZVY60W0jRM/4TMr1DtKAxn7BwfL+9GQp06W6+c2o
	 eHu/8STxVeNieWX3C9k5vLTdz6mwj81SrIvn8ULzcpahA/Fn8GtLrCqayprjUVZy1Z
	 4vWB/aIdPDluAuEyBPyHZtwZgsxwtLDkWtRtFmSxc78CM2ufffwotFfKLF7MgWU/tb
	 7J1mqIDRxcIfswr5aKabbIXM/SHFnTZqYly+DAFUpdzwER9U6tWBE/uNTXMt7stlV4
	 60GNasdjCh0yA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5C60DC433FE
	for <ddprobe@lists.linux.dev>; Tue, 22 Nov 2022 19:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166914485436.5941.18216416613055981217.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 77528e9b8d565954d2a7dbb922e050d83d3ccf201c12260023ad1b9873468e8f
Date: Tue, 22 Nov 2022 19:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669144854
