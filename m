Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36A0D3C31
	for <ddprobe@lists.linux.dev>; Wed,  8 Mar 2023 12:41:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9C75C433EF
	for <ddprobe@lists.linux.dev>; Wed,  8 Mar 2023 12:41:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678279265;
	bh=PKCfUrC+PA+A9Il6jTmJ94GcKoGCGcqpFWDaohVpzj4=;
	h=To:Subject:From:Date:From;
	b=rzCvAT78nutq7wpJjpZHanWxM3xOFmk70JO5Zv+KBq/FoRaUXX5lk8PUUprUbSIVL
	 AYXF5iB4+sZ0PNDNgDdHloLKsqgNxMC7qjdyp5+e1FOeHGs2MKlyLiH8LIxYY4M16q
	 TqljSIyCiGieCPatFDTjacHU+2qA59THIiv4DzS6RZ63UKo3tyczVFcAbw1CcDb4kB
	 uLEGBucHLmfVC1MH/xiR7e0GYPtdulgLjX68UliFKkDwiePO25S4NJrhcOvDy2KBxu
	 BapPdKBifIP+U1ygEYuWV39QdyFilkvHkhr9/6LILHXJ+DLbouU8bLAYhNNiEKKdK6
	 8m+SdiCujDOCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB2C1C64EC4
	for <ddprobe@lists.linux.dev>; Wed,  8 Mar 2023 12:41:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167827926575.24338.17198427768005316598.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 57f834dbf5608566be39480ccc4d1327093c53384b45729b3e730a4b7962b85a
Date: Wed, 08 Mar 2023 12:41:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678279265
