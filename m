Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E05EA20EA
	for <ddprobe@lists.linux.dev>; Fri, 16 Dec 2022 15:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 814DAC433EF
	for <ddprobe@lists.linux.dev>; Fri, 16 Dec 2022 15:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671204687;
	bh=K9tduC6hpnGpaWQnLK3FmInBNkMUV2KA42lN1GAW6f4=;
	h=To:Subject:From:Date:From;
	b=CeNd7GdhsLP7F5HuEcWpx6U0S0DOBOURiuksjAAC/BqO2fcDB9yjTH9PdGnpFstBV
	 J6lnxlZ+tunA2l3heM99YOVvipweI3cmDR2QksibOSedpo5SQjPP4vdwsdipbbCiaR
	 2ATB7xLzUvlSLGEp0onxoIBlJlvdIkw7Ddl3ExydykG4410rjEPFaNcgscuSny8S2k
	 HwrCTXq5O05sNWaOWT0ukw/PWPTdd98S6VY4beTH4I5y7JyuBeOn0Mrit59gs9lCnu
	 GZjdeB+WZaD7G4asFfyQzDr535bkHiPrpV7sOA5gGVqt/QJm/pATgTwBSviBW9i7Pb
	 D/VSV8NyOWE1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62B18C4167B
	for <ddprobe@lists.linux.dev>; Fri, 16 Dec 2022 15:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167120468739.20688.18232120533795565903.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8c7071b28a3e47b647afb7ca4d323e1686e6fecdfd5593ae2d8a5764730e52d3
Date: Fri, 16 Dec 2022 15:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671204687
