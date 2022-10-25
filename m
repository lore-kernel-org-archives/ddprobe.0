Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D8F7A800
	for <ddprobe@lists.linux.dev>; Tue, 25 Oct 2022 02:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7EA2FC433D7
	for <ddprobe@lists.linux.dev>; Tue, 25 Oct 2022 02:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666665653;
	bh=GCYpaO1gvSDP7Rbvoaw74cYqlotWLTPcqtQOwAiM+XA=;
	h=To:Subject:From:Date:From;
	b=DwUcet/GBeAsGhdFniqhY3U3RGZoPD4UyJKFxeq9MBdbKIIBiUehnF2/smSP0XZd9
	 vYgxydQDxLItCTeWQ5RADLDqVZkUZF5vNS3TthPxU6O/1jzKlVDCfMFuaAucgGobBD
	 CkPJL/kj3ppI+jfU7gpzbfMfxctKywF93SgmGBqF59QVKlUVIrU1soTqLiCiJP7r39
	 CEZynuOOxzNX0vFmuUcX8tEK+4Jn3cbWdBA1HkYqOxUWBJetwbZ05oD4/QR09IvptJ
	 jd4Vq9YAz3OpytHlHXNaepy+OwycozYwN/R7s7mwLsbB5CzzFdPR6hnM+wNBlPB7Sc
	 HSS0a9XCyfltQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64F38C67871
	for <ddprobe@lists.linux.dev>; Tue, 25 Oct 2022 02:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166666565339.31495.2992610551466229479.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 252294f5b3f88708a9e1dc0760865c51e0094a4e88cfc9c6a44e4b5cd86af48d
Date: Tue, 25 Oct 2022 02:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666665653
