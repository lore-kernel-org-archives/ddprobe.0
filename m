Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C8CC81C20
	for <ddprobe@lists.linux.dev>; Sat,  3 Sep 2022 10:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6ED01C433C1
	for <ddprobe@lists.linux.dev>; Sat,  3 Sep 2022 10:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662199253;
	bh=u+ilbJhzyWRtaIZuOeBrym0J24a2kRkF82qRNxGWFb8=;
	h=To:Subject:From:Date:From;
	b=B03kroeydNt/SNUN9I2yMlnOtwI2xTBk0zfZ0Ru+VwYUuzOXp7ae5r9NXVlYaUU26
	 J9705noBfynFvaANjfIKwOk8CBdS0QGy9izlTlhosbmi90LzsG9mLbOquh8ihCND3a
	 kMxQ6uvgCFoeUCMZ0sK7lIQWKNyek5GtJQdMSOjLj0vcNR839TLa6Y1GsmtuO3BxgT
	 2PHzJjo8v5smQVNMQfWdaBncHC3CYuEk9iHJbtjP/+jAL5o4lVH11yt7rmOdnLfJ1c
	 lhev0YfpGgWWX0ozDxEsTx9NAT3fT7PBz89lRGYRsAFUoGKU9trjIctZLE1Iz/DjVF
	 XNxque9YhvDYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5264DECAAD5
	for <ddprobe@lists.linux.dev>; Sat,  3 Sep 2022 10:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166219925332.4528.10641572458130846673.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7c0b4c2a8d24469c33355199275664c5eb8a4d297c7b5f7d1e1fb3c11b3ce5a4
Date: Sat, 03 Sep 2022 10:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662199253
