Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 83CF517FA
	for <ddprobe@lists.linux.dev>; Sun, 11 Jun 2023 05:52:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9641C433EF
	for <ddprobe@lists.linux.dev>; Sun, 11 Jun 2023 05:52:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686462725;
	bh=7Quc95aK0KI/ChN9HgKXbWlGnCQheMcSR6uidgDYsaU=;
	h=To:Subject:From:Date:From;
	b=laF8xyQpqrhMgNr/9q3Yq77C2kjVYTOaz/4Mqx+9OVMVnP/EYsA7K8PjPgTOP3J7Y
	 BX6ZU8N0Upw/rAyApt8BOXjkr0qRooZI8Fk2/jTByQroLKIFRyIILhKG/QrSvqdZGB
	 P79v1YNhEcRAkKz3R+qga0YcdKCm2Sojfnt5cA8hGRKBzx2E/Hh6+sD6/0uBpw+y/9
	 60e7sgB7wAUgSDLV4Dl+PoWRiHYQKV9n1HEeo6nCR04fHsDW1v2GughvProB/DpnFy
	 YlqHQxxJouQ+mHvnQ1CCl1u17NpruxvAzySK11e9EigtOkIIfvLDLuWY18fmyyPfz6
	 43ifKJjorawyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BCA94C7EE23
	for <ddprobe@lists.linux.dev>; Sun, 11 Jun 2023 05:52:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168646272576.29662.1643562354581912706.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 95f5853c5596943d60a8652f01cfada03df87b57d617350c793ea835f273bf91
Date: Sun, 11 Jun 2023 05:52:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686462725
