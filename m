Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F6CB156E0
	for <ddprobe@lists.linux.dev>; Wed,  5 Jul 2023 23:57:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF4B4C433C7
	for <ddprobe@lists.linux.dev>; Wed,  5 Jul 2023 23:57:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688601428;
	bh=0U4KjYtsE0lA74nWnlAOnQ7IDxBuzeBPaF23ciC5bhs=;
	h=To:Subject:From:Date:From;
	b=qKIWYCaOkNI4qJGRVtlTfdIJH0NO2uoSP4CQu/F9oMwpCPflYniu/gnlxahUWpyzr
	 6FjhbOqPTFm2Km3Rie9X6iqUjwzDSVPirN/ayah7raQ3Fnb336y8DvLOtxoOw4Z28P
	 Pi11Fl6nKmY5ujM3H5FjvTeieQq54b8aufckK4XiBxC0qylHpSzF0DFRAQf4E3G5Z1
	 Cz9n1cp+AjV14N2BKE7D6Hb5iUdrtkg2FP+UpFIO9ljPr8pqAJ7UYvcGJk3KPLY813
	 TeQkfHGWV+Si6FNK6g5S2r0fVbQfUv5tDEMECf7LIyhBj/EKlEcHAKuw0LDtY1U4js
	 1Sn82FWN9ItxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4CA8EB64DA
	for <ddprobe@lists.linux.dev>; Wed,  5 Jul 2023 23:57:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168860142866.16150.4179054928181058159.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e2a2284f8f79fe997a308c2fa598a752f8a7a1a951080f8c201e6fccd5ccd5b
Date: Wed, 05 Jul 2023 23:57:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688601428
