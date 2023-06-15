Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E9BE1379
	for <ddprobe@lists.linux.dev>; Thu, 15 Jun 2023 08:09:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 02899C433C8
	for <ddprobe@lists.linux.dev>; Thu, 15 Jun 2023 08:09:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686816549;
	bh=1DSX+jUeXqdJWYGCondB3OLNh90ZdqtXGURRBPA21Ro=;
	h=To:Subject:From:Date:From;
	b=R1jXHDWEeGlxlJ1Qb4MtU1TJIbER+PURNlNl9faLdZ1S4NDuFv4PZYoqV3YdX9aZ6
	 e2rv3BDJAZ5L89hCAVHXHoKwKGPi6zTv6D54UR0W/J+DMBanGYN5e4QBlHsgwAXqYf
	 YXiunbegiJ+Xp/OX1Z6YnD3TgtVPxTll9FdkcYN+Px3Ywh2Y4mx+R3yWIfWTBr3BBS
	 3Pxjt0pPTz6cZezq0RnveDcheIoF0ZlhSd1AmgLVSnzEoJziG59jmn69MoEOHKb7O+
	 P1TPkNesrr5FDxglAv0BLOLr9GL5ZgtfrRyNgUbANNHfky18YEuh0dt0mNJPI6EG6P
	 xuoLN4i2fQ94g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D1D13EB64D9
	for <ddprobe@lists.linux.dev>; Thu, 15 Jun 2023 08:09:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168681654884.32363.10352305070193367489.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 97bd4c421b5286dce7c7372c7445b0efd8cd024ea1918138fb32a5591ed4b14f
Date: Thu, 15 Jun 2023 08:09:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686816548
