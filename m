Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 854CF10E1
	for <ddprobe@lists.linux.dev>; Thu, 10 Aug 2023 06:13:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DFA41C433C7
	for <ddprobe@lists.linux.dev>; Thu, 10 Aug 2023 06:13:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691647988;
	bh=hDamhmHIt+TsK3522TINU/vFad64xsiuInD+CO4Qk1Y=;
	h=To:Subject:From:Date:From;
	b=KLLZDmq17WGZKPEtvZgZYtb1xcm5y2E7rUlHS1GGdjYLdVf7QKbu+xPhKpwd8xFW+
	 ZlMCorD8PM2aH8IsozmL0FSJbdiBwogynmJaIUSP5P40tsJWJ0IbhJZENunQzNnO4j
	 rRGSPGEFTJH8tske0s95WwfSS/a9blr3Y/Cb0C+UDRn71NMDkOoC5WaU63U1EjMPEL
	 mq8Fm6prlUTpvVX2FNvdXDtJ/UaJXMR0OKa8Bu81wr0JsGHWrYh8gywdyrTKwik7xA
	 QbkaBPlVHrw1qo5mpugLa3W13+aKaP7LO1v5L6+gRJ5t3+Y38woteNu0W/G+9IeWhs
	 eulm1nJslpEyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB13AC001B0
	for <ddprobe@lists.linux.dev>; Thu, 10 Aug 2023 06:13:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169164798875.15054.11573162853915108946.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f6cd2744a06763fdbfcf218550acecab309ad823809f1e930db812c66e3c18a8
Date: Thu, 10 Aug 2023 06:13:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691647988
