Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18FAE37881D
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 10:58:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783681114; cv=none; b=FanKyZl/8+6lriIBXxMOgyYyX86err3n2cr1EWODKDwb+g+1/mxfx1cFKWcCiZ99JBngkIn5e8hw3qzWKUHrqZ4VbgG941bAcpp06Oiq08oB+a9dx2/4OFQnGkP86imZt5bUe8K1q2rdMIC8I7pjJDXF4TWkSDSyX5YveiYOMz8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783681114; c=relaxed/simple;
	bh=OiDyAubOl4Ow9rMFNTeRHRTcKSHLARNsaGninBj7+DI=;
	h=To:Subject:From:Message-Id:Date; b=OC3xezOQRd1WxMGOkm2DYkWCzEbVWCKBd5MlJUFDTl6ZXovpYs73sqjI3GSl2ewW20GP5urDbfNDrzUug9uj+UlXCVvPcyJjAFlQYd7YybkbP49LDbXz7DpPRF3hE5qFxwvZ6oUaN9QG6WVIutsRdy2KDr/Uku23/w5NiqoneeU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kqS5qnUm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kqS5qnUm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB424C2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 10:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783681113;
	bh=OiDyAubOl4Ow9rMFNTeRHRTcKSHLARNsaGninBj7+DI=;
	h=To:Subject:From:Date:From;
	b=kqS5qnUmo+Wlvj/pN9/ev1TJZ0muPckzd1ueyT+v9IYibS0J5q8EZXj8ckCzNeiiL
	 l3QQ8Op2F6sHdPxritqJ9eIlKDjTkUnyJHhtlMSTyrU9cOQA+VpCEmTg2X7qog/OKh
	 6JUaGxfdPDNM2qpB32GkAHOwDzXNab15SyOsv2H7qxzsHPWvQFXM7ms2cfb1hHUQyj
	 L2tGxaXPYkAz+PJn508KOsqtEe7zElaos6x6crb2IRxd0yFQhU7W8/kvKHkRNuVVzt
	 1UMuFpbbb8BtkSwgDA7FYJcuQ9aTEE7Ih+SK0WqDuK2QO8OCURnb5M23OZGtJAVGj+
	 HkuPcmgOMVESQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8EACC43458
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 10:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178368111368.31677.16401536145411600011.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 592889271cbba254a0fc6b3332e5e683f777cdb2a0a31c513ac698c246bbc048
Date: Fri, 10 Jul 2026 10:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783681113
