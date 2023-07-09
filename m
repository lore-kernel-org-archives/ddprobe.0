Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59C821FCE
	for <ddprobe@lists.linux.dev>; Sun,  9 Jul 2023 09:57:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2CB0C433C7
	for <ddprobe@lists.linux.dev>; Sun,  9 Jul 2023 09:57:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688896628;
	bh=AXcivczd6uEobGCeARfzKl8/C8axhkZ/KElHyj0myjo=;
	h=To:Subject:From:Date:From;
	b=Ue2JY0khqCfZ4g6+Jbq46wNQu2qCiiCMPymlZh1ZM9KqwCpy3hv5Og28CvE+ytWx5
	 SFlUvxB8QovYs/EMww8BqbhMR7HDpZTGDCQmmJdZNY01Qvoa6du2yXnY3uRW0TTnod
	 CmwdoddSD4xKYAEmKKv4S/kJFRV53yHrTe9SfupVf+97YkjcPgT/Zr8ip7jnsLy+DM
	 PkV93OWRYY67v5CMQ6jaJVOfDfsyjR7HQvikinODJ77uju6vR3PVWVf53rHTyAqljG
	 stWsnbqI66mZ97KENBOGUBr3ePb0TD94d0YkHTeumoECEJKkVg/+cilAXMKu2d9n8j
	 rGep/urvLkY8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABEF1EB64DC
	for <ddprobe@lists.linux.dev>; Sun,  9 Jul 2023 09:57:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168889662869.1593.17415870883542103883.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 13099efc95cf09c7527cd1adcf54f858763ecd5e41c6ff7968b2ddabccbef07c
Date: Sun, 09 Jul 2023 09:57:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688896628
