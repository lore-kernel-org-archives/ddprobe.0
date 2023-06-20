Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 82DD21857
	for <ddprobe@lists.linux.dev>; Tue, 20 Jun 2023 04:22:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF1DEC433C8
	for <ddprobe@lists.linux.dev>; Tue, 20 Jun 2023 04:22:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687234928;
	bh=Y6lTeBWYPA6+/vdJpgBsq0RbXy5UfGo0kIHUtNp90Ww=;
	h=To:Subject:From:Date:From;
	b=HQIEhhYqLfoD5EsjVUGkD4qRU+7QbPN5BaLnxP5GKB7Asn4WtJqsRiy/pg2HEnARg
	 KzXxj12dOf4G5J0UG0HQJK6KwI6rHMZHVscm+I9JwHFHWaJFlP+lL5wKPyWPtf0YP9
	 1sU3THFGOOOFLj9TSx0w3pF2bi3a3/jhVFXFnPGmf5hjGOojJrM40zsRrdfVtwVPMp
	 MTazU9L0igYri9VsVFQtio4k9jw5O+jNq1jqBP919Ks8x41XvZPCSZrCnRqIV7gKFH
	 AiD+GeKuT5HcQtlQaPTuN8cTXjnrntPswKlGmPTNUhf4bMtUgY0zk2n8VCXdh5HXm0
	 uQBFLEfg6xB7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC7C4EB64D7
	for <ddprobe@lists.linux.dev>; Tue, 20 Jun 2023 04:22:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168723492874.30943.2265686655705877106.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b853f28a85a00021597c82c045c749070bb5317873a0c32e34e7ffb5390f143
Date: Tue, 20 Jun 2023 04:22:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687234928
