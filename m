Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C8F797C
	for <ddprobe@lists.linux.dev>; Tue, 30 Aug 2022 00:30:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 68B97C433D6
	for <ddprobe@lists.linux.dev>; Tue, 30 Aug 2022 00:30:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661819452;
	bh=KGUFECfEGMeeZxUMZuOeLmPsjWFngCGIs/zAEkozt+k=;
	h=To:Subject:From:Date:From;
	b=VLe1qp7CKwb/EMs5DOGTWdo+UhCQvVF/hpdW+fl3udf0/uNzk3ug7lMG5s9xe8qgf
	 TWgfiwgyz2kb59+9cpoaXoKNuR9GXB58uhApc2Dps7F7qihax4CMRNuEcVSrZW44Qx
	 M4YQoRjBmdil7jsndCsGThfmF/HwULpCktO7S4tDGWuun8cesqwZdJsMYCtUrt4c9J
	 F35i8SJRMjacScqgraKHDLQ4oTJ7YaR5uXGcxvCTlEJaiFC0iqKUL7Yd6l3THBLY4I
	 EcYWzMDj8KasNeOGhLD2HExPmdci416edpSTg3G+d6mM/1xxxQjpQujzd9L0D6qZ78
	 7rhZ4Du9ZBARQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5156AECAAD2
	for <ddprobe@lists.linux.dev>; Tue, 30 Aug 2022 00:30:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166181945232.26528.3267449341250346120.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9f30cfe5d27c6faec3d78d4edbd90ad2e0cf884f76e821a7be5a4b2444b15103
Date: Tue, 30 Aug 2022 00:30:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661819452
