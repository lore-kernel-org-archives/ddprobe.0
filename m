Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD63720EA
	for <ddprobe@lists.linux.dev>; Tue,  6 Dec 2022 20:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 83F99C433D6
	for <ddprobe@lists.linux.dev>; Tue,  6 Dec 2022 20:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670359254;
	bh=UJnT2CG4L0XneWG2ARMBq7qs7TzH3ATLiWvUvDu3I6E=;
	h=To:Subject:From:Date:From;
	b=oXXrVE6aLqqLtNjcTIikOMfVaEZ6jlvS2ehWNp7K6wocknezWkgvcDjrcR8mlbr1l
	 oThRapfVnHGhj2qpbr4XYDbFnXYz0sjel93gZyf7XZTTnWzE36xeb4f7md1x9vf38T
	 GCyTW8jVSyHcWlTkJ9HR3Ts//WJX8nCwdcg3pB3SAvTNy5XQRy2KdOnYklRxQ/gwJ3
	 sMXmGHNUONEnHbCWTEG//tW221Lu+VJwmI0EqkjvJe64m7g16wdPH6AOE4c8f0pON2
	 nsXwO9FPEN5HGTbmXUL+/PB4KsyxDdvXoxxTjWxRwpPa6fc2Ti3fJqJqmOl8/CvMey
	 fXxMfNhHyxH7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6C714C352A1
	for <ddprobe@lists.linux.dev>; Tue,  6 Dec 2022 20:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167035925442.4906.7478433783667499844.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a794ec438e4a6cac11eda0bd6d573be79490a35c19fb6364133c07bfbe0691c4
Date: Tue, 06 Dec 2022 20:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670359254
