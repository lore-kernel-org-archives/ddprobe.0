Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D49B617D0
	for <ddprobe@lists.linux.dev>; Sun, 27 Nov 2022 05:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 78840C433D6
	for <ddprobe@lists.linux.dev>; Sun, 27 Nov 2022 05:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669526454;
	bh=kpYYzddN4gf1ZpPtG++zYcX5nQnvL51KlLaMckjDLWA=;
	h=To:Subject:From:Date:From;
	b=jsMOe9kuPM81NZ25JPBJu2rGO2SkzpCx7Fvp3hXAgyYv8WcCSVDq8HP26T1NoomfE
	 WQEcXlaqq20DO7Toscr89Hc0qs3zlw0iCEMSRWa8KFdBvRCMXqu5eKKDXuDG/gNOmX
	 87utfTLzE/9rg//x/dI+k8uhDXyDYQ84KNRtpGCVF4qn9p1BOcXOn7zuoUQaYcStBJ
	 x2J1HFPFmS/t4uxCsv4AKoWRzzo9Sk4tWfYdJzfUiuJpECIUjCGBUWGaBBYbWIDAP+
	 ZVVNWx7ddfK3ILMZexNT5w5KRPGxaQGZiO3RqFhbM/L4DR3CVpbGdl9N7kGObbDxcV
	 yAo4hQxZlDH4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56E57C4332F
	for <ddprobe@lists.linux.dev>; Sun, 27 Nov 2022 05:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166952645433.7935.5245681154649377363.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab9114a5cacdd2fb315ba9079d857025b92e68862a38c07000aff83921ea241f
Date: Sun, 27 Nov 2022 05:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669526454
