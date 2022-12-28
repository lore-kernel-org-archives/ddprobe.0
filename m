Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 00E041842
	for <ddprobe@lists.linux.dev>; Wed, 28 Dec 2022 00:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9B13BC433EF
	for <ddprobe@lists.linux.dev>; Wed, 28 Dec 2022 00:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672185687;
	bh=hPRh7h5wF7QzpfUANLzOLPP6P6I3XYwOWnmS3pGWR3U=;
	h=To:Subject:From:Date:From;
	b=gfwtbAf5Mvj2pawuSDPtf0mfsfTVpBt2KL9PNiXQxjD1xuSu6QOxqKhCtrGrJ2J1d
	 BTiZceUvKETU7Kzg8Fz5lF30Fv1zQGR6B0fKd/wlQ6+b6xnxPteoqVM/+Rg6n5EtJH
	 a/SuF5NeQ5fLL26QRwPUHwEfwJjzLairpXp+0VtGZ1sT9Tw22j3og6X8JRu6ZQ4c6y
	 +ZPM154PLcjwPBC2Gi4zZ8POj+31nWsdPLsNGF6sinmWTXMw8oGcOga5gatrSFdCI6
	 dHFi7wtGkDNngArXSMfgLX3fkwFCl/WQsiwOCS3tn4UKw4PN9CCcbD6JMg+0serbsD
	 gDUWrRliKEHgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7FF88C10F1B
	for <ddprobe@lists.linux.dev>; Wed, 28 Dec 2022 00:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167218568751.30092.12153815378753272615.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a4ec4af98c0922dc16e7cc9d891c3bcb7266d6c87c2188925f230e91f0f52223
Date: Wed, 28 Dec 2022 00:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672185687
