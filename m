Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 619251871
	for <ddprobe@lists.linux.dev>; Fri,  8 Sep 2023 10:54:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBA33C433C7
	for <ddprobe@lists.linux.dev>; Fri,  8 Sep 2023 10:54:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1694170448;
	bh=0dU/jGtz6PPsf0L1MBWBput+BeXNTYxheS5fRfu3bU4=;
	h=To:Subject:From:Date:From;
	b=DRt/GyqXhL+0iwvVFIatVPqb8dB9m2YWgrL3NXdy/7bUUebFyzZTerzUa10OYl4ps
	 AXfTDn9f1PdSKpU+INaRKYP/66TXBGhLj5r+vw+0XK/HdEedfGOrG/zNebRlgLuflT
	 WX1yrzZIIgwlpyYLaBU8OMQPSiV+IxImxMoF7LYzqv7BnDW80ImfovKaLcuEyI/ZxI
	 /ciRiXzJNZFr1WcCJrMynFiqB996dp0q6wTnSOra0VLAMooV/z7ZW+0C8O4sYgmyN/
	 SbVysau7uf1fWUNcAALjYXd3icAqJvv4Eqsprc9tSNRn9HWKO00fI+4hn8Y4TArRlk
	 Ep7HO0OrwqhIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACF1BEE57EF
	for <ddprobe@lists.linux.dev>; Fri,  8 Sep 2023 10:54:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169417044870.11348.1311383320274892780.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bad2b962d8aa0a3a2a9b5f44ce021d8619104f32f2715458c51c6c8c64b45b17
Date: Fri, 08 Sep 2023 10:54:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1694170448
