Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 316911C26
	for <ddprobe@lists.linux.dev>; Sat,  6 May 2023 07:28:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D543FC433EF
	for <ddprobe@lists.linux.dev>; Sat,  6 May 2023 07:28:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683358085;
	bh=XK9C3x1qHVFknWCBiSBNBQiSbj20ZZBR0ryoUd459e0=;
	h=To:Subject:From:Date:From;
	b=pPerklW+NO7IY8XhMVG4EPp6m+sjj0ATY4gpceto5FZ4oB2Fles/Lu341PXEAzKU5
	 OuPHobsAwU6YeXfPLi60IAK3ELjtS6ZRS/QvZZdzHVeyYkuDPhUA/vk7+Wmqp/2EPp
	 CD9U8Boaxrz5rG6XDajV0qPuSDUNeGnBK/HKG/fXeYSRHXyAJNGEJcz2Cko/K9X9Xl
	 w/1620iTRje2YiGILASnoMZeYPAwxsDyYzsqO55CkyyP5utlTXErR/kob+gsxegAyF
	 jHh85uB5Zh9h14DAUT5yhGOJ10gh561s/kAbL6bwmam5sSKi/+bDmCiQPij25wtgv3
	 Ym9wJbmngUKwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7260C77B7F
	for <ddprobe@lists.linux.dev>; Sat,  6 May 2023 07:28:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168335808573.17730.15099679908797892337.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be762fb3fa45e3d638088da105807831e87ca02a92d16e3dfe91a966fbc217fa
Date: Sat, 06 May 2023 07:28:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683358085
