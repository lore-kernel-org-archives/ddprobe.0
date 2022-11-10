Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D68BC36E
	for <ddprobe@lists.linux.dev>; Thu, 10 Nov 2022 06:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7B642C433D6
	for <ddprobe@lists.linux.dev>; Thu, 10 Nov 2022 06:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668060054;
	bh=P7k4+FeKJBqv/fj7G0sfHbFJ1AM131MnH9EMLWdvoWQ=;
	h=To:Subject:From:Date:From;
	b=YutDIQC8KBwjox6GV+Vu8ONBhJyE93lFXIUZSC5WRpxAWm7LYIu2M2uz732Zn1EDU
	 nZNJ+7ezpHK8w8KX4u5fTBZMyqEEMaToC3G22LrfpoD2Z7AzEom7bSFBC3d248VkN6
	 CKT1l7mrJy4lv1bcIX0COL7A51Rf+e4vbMHVpMMWLoFbsfo0/H/ewdAAQ0g74oC7uD
	 ZBjTADJNroHVYXULRhM1a5I4/dldaCblglsgGBG+FM3W0YbIeqDs04balN6p+/OJxb
	 kzgf3REBYoF9jObxAwdtxpZP571eGqqB1ENgA9OIaI39ugMj9o2nM5HhgxhgPKtSYY
	 +EdNrVXNAmpwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61F1BC433FE
	for <ddprobe@lists.linux.dev>; Thu, 10 Nov 2022 06:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166806005439.330.11287691796557622023.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e610dc23bb05f4b79efe3ed9e081d98d6fc5c84035b0c6900b525d35f592b172
Date: Thu, 10 Nov 2022 06:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668060054
