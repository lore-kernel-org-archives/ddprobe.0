Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C519A7E
	for <ddprobe@lists.linux.dev>; Wed,  7 Sep 2022 05:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 75821C433C1
	for <ddprobe@lists.linux.dev>; Wed,  7 Sep 2022 05:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662527453;
	bh=KrrUtSwnu7W2r3EKTXYZw1Z0q/cNSMOx76uKt5d0nhQ=;
	h=To:Subject:From:Date:From;
	b=ofqhGOAUhrP9W/6ZSW6KhTjn6+VvWs8JRGecNAY12PSOQSAgOn0cYN3DQypZFDD64
	 B+lVfDWk8ezXKLUgTRqDcKtIQ70IYitiB8yXXjY0b8oM7qcxOl1/Ve3DEBM/BalqEJ
	 vx0+71mdfHg4wEHXv7zK5BJZPSULAy4EDKCVH1agOcm3Y+7HPYYJXAVlbvM0F571V2
	 VR2WRmy7w7YF4fyZvtqxifrz9T9MZFzPMZFBj2TuExvwTZtLZP3lo0Easy94zRxVPg
	 HI4pvzB/lGRxgMq/TPJOTP32VSbdL96ijCbNT8/DmPWRDog4g7wb3F7wPwmaBpm7Oe
	 LQ1gMfaDzpKvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5603AC38145
	for <ddprobe@lists.linux.dev>; Wed,  7 Sep 2022 05:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166252745334.24537.11642208174712212776.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fe7fd7358dd0eb4606f2ca7b00ab54cbe6fe3231d563269ea3eb1d1db6f1349c
Date: Wed, 07 Sep 2022 05:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662527453
