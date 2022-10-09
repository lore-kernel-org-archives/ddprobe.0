Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AABB21876
	for <ddprobe@lists.linux.dev>; Sun,  9 Oct 2022 16:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6F959C433C1
	for <ddprobe@lists.linux.dev>; Sun,  9 Oct 2022 16:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665333653;
	bh=TKIr/cElLN5jfQ/FQ0SZ8oWVkKOTeVcTtbXg3YR0OSU=;
	h=To:Subject:From:Date:From;
	b=G9z/ckAh6nowY2fiwxIK14XAEQrFt3JdzhhYTLxcmPQS/HyjpxMWIj5Ta+Kn9LP+f
	 iD8dM1Kljin7ZEVUE/PTM0ySWgJyPGG3P0b9XaKMvny3QQpU/2+VtZazSsYfUs6MwZ
	 XYkg38jELwvTrYPt3GHfPLCJ1/DprUB3LssSWPnFjWKPfIx2NXZMvzV08b8iNhyYeo
	 xlCCVfIQ8WI2MYACSR+mY0xRMLfiAdyTg8GD3WPBB3da08/AIG2/I84Zb/6ScWW6nn
	 77kIAMGbOIG5cqLuA4zp3wHUwrcSQEjSwl4Cv/Qx7KssuV9mMEQIyus7zaM2DWYj4v
	 LurIsu/h57cgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51C36C433FE
	for <ddprobe@lists.linux.dev>; Sun,  9 Oct 2022 16:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166533365332.20948.906268564049360040.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7dcfea067ff2e5246f936624d5af7f87c367129309960c4ebc947d1b984ebdc6
Date: Sun, 09 Oct 2022 16:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665333653
