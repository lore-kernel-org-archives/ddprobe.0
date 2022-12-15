Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D692C17E3
	for <ddprobe@lists.linux.dev>; Thu, 15 Dec 2022 03:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 82133C433D2
	for <ddprobe@lists.linux.dev>; Thu, 15 Dec 2022 03:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671076287;
	bh=94FokPoXsMMbt5DotizNhdPBKfZm80MD/kzpvp+ggS0=;
	h=To:Subject:From:Date:From;
	b=SISekp50ww9UlhHzPRemBciU3txpXBtgIMJuY5luvph26jLv60uEhGGLh3HhcdRkn
	 uTHkCmADjfKFX8cgCblSnqL8BWw27n4God88iwyxrE9RnI2k+KDxfJKXMnh33LeqAZ
	 8ohEriaEhRuGoR5F37//a4cMOdVBEDXTOfQLafe5hmM1iTiHEq8qmct6F43Ri9/eVr
	 wObtlWpuBPg3geoN3r48HmPuS1Lf2G6aNIHVaZtgjZncgnwbXSauNNS58Y2DT+pmtO
	 i6fJt3sEr+rTpSkHQOeP5EdD4SS1IsB4TS21pQOmdcuPtkb0FXGcS5msdcPKCJY47H
	 VyzWRlgRFpXbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60E4AC4332F
	for <ddprobe@lists.linux.dev>; Thu, 15 Dec 2022 03:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167107628737.23782.16264925937210800229.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 30d4f36fe42aa2c3772849794c0594c6de711a2bbd719e5eb3a446f268f415e2
Date: Thu, 15 Dec 2022 03:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671076287
