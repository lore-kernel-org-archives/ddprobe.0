Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF6EBA57
	for <ddprobe@lists.linux.dev>; Sun, 20 Nov 2022 15:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 848B0C433C1
	for <ddprobe@lists.linux.dev>; Sun, 20 Nov 2022 15:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668957054;
	bh=r3rG1jP3/6tRZnz/KYULPr+g8xNWcB0wxFoSW/qQKNs=;
	h=To:Subject:From:Date:From;
	b=Wtna2eAtOWGdOk7Ek+TBG3L3LysUVfvl786HBVTlu4YF2+w90hoA5WnWiSByCAQ8d
	 taz4VxxF/vxs4VUbD8Q5vSujM+lGgvsf1SZLu2/XbhoUjYAaTBQKm7jZELPsdC8fcK
	 HAuTiWU+fyAUX7494YFdOj/WFFcdxnw+bxr2bUCefpdZ2d1pMXpe6UVLDHp4+tTtgF
	 nKodYbrO8I2KLQzikdnreYXQmI+uwBSWNs/OrjV8pMhJSJOYo+xnTU8pIZf70mdZDN
	 QDefGb6NrD+VFUHGeI/dNltaoWUjmB+5VmBQcoF3pkR0TqsBpxHDdWz6XLTz4vQRCS
	 OoKnyzhWSLxvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F3A3C4332F
	for <ddprobe@lists.linux.dev>; Sun, 20 Nov 2022 15:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166895705438.12649.9509631711208709316.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7115cbf81af64e32e169caefc005c5357ff530a0fe30c8e7e55ff928d3e57ed4
Date: Sun, 20 Nov 2022 15:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668957054
