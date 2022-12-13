Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D53F828EF
	for <ddprobe@lists.linux.dev>; Tue, 13 Dec 2022 10:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7A00DC433EF
	for <ddprobe@lists.linux.dev>; Tue, 13 Dec 2022 10:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670926287;
	bh=CmeDNgnomx4KaV+ZoZL7a2nsLJnSXk5AP54EIkhWvZg=;
	h=To:Subject:From:Date:From;
	b=c4uA+lCojqhLuLuO+VnNThrTLkd0J9unyGhfVYuAjwrnRdmIeHASigEGrlkfxcETz
	 lIAvMWhDCsQ3mc/I2SmMszWdckwD1u4VBn5rCphglO2vZ8mJ9w50AHunkvw26XAv4n
	 4W0SX+KqU7fYOCtY2Qv0SJZ88RAedCtTyIxndf/Uz6X3n3D1U7lr0Wm9HQBy/5Cjha
	 1Ov8JXry4WNlWJjQkhGQsNkQRa20Cp+WfMcy6ZkDhHwwbhVtreRVIrBuDoqyTdFBBt
	 YSgSrJ3SjTHooGkSOcfB9VBX+M5o/pSkoZSbuz/+aiiGSdCsofTrud2z0//HRkuErt
	 YimHb1D5nGBMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 601BCC4332F
	for <ddprobe@lists.linux.dev>; Tue, 13 Dec 2022 10:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167092628738.7074.853562158576687032.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 364679a3209936d4c0f737798c79ac9bfe495e84a3daec8d89448329fc1ba638
Date: Tue, 13 Dec 2022 10:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670926287
