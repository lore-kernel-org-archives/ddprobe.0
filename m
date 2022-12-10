Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D1B4CA2A
	for <ddprobe@lists.linux.dev>; Sat, 10 Dec 2022 10:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 89084C433D2
	for <ddprobe@lists.linux.dev>; Sat, 10 Dec 2022 10:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670668287;
	bh=h9USzJtOXehGgFt3SIF4HugjZAsi1vifQrtYv6xPAsc=;
	h=To:Subject:From:Date:From;
	b=LRGWWi5D2SGY2iz1ONwHwYZYfevWU2f4qA0ELxGPB7FU32KCo8K3t9kj6RsVSeUbz
	 +t5kdyt6stTc42mEmb+8LPFEoVLz1bLk9zaZGCgaLz8qo/GF/fbJk0zlMoRQ1gRNnR
	 GKsubC4Eieuo+Jv3Qcpk74VaMOkpBiZ/wvtGJ0DgUTENB+rDqKzbaqx+pCYCszcLrj
	 fvhKajixJj32R/9QbqJ3oU0gjLUNvd2Yqds0LJkBhCzxhyZB/K0JPVowbAqB78Tsdj
	 9mzVC2elPJs+7hZ18c+sS+TrPa08TTUeQ99rNgSrs1EWQUsQj683Q2yBUus1oS/04j
	 O+Jc4Sus+a+Hw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6BB7FC4332F
	for <ddprobe@lists.linux.dev>; Sat, 10 Dec 2022 10:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167066828743.19106.1026317535481440183.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4696b541852726b50d7de54c11b8c95a3d8607c66c5f9e8cffe341d0a77de083
Date: Sat, 10 Dec 2022 10:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670668287
