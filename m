Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CDD4AEA0
	for <ddprobe@lists.linux.dev>; Fri,  2 Sep 2022 02:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7CF60C433C1
	for <ddprobe@lists.linux.dev>; Fri,  2 Sep 2022 02:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662084653;
	bh=5P+iF4LLAPYF9vnKDgmvumfdHSHkk3PwyhtSLUluSfE=;
	h=To:Subject:From:Date:From;
	b=eRjPIrMcw1899P/FeeTjZ2MVVf2EEYu0QGeZVMhFSBFQfVbnwbmSJkLrCttcD0Vmr
	 ycox91pSfXrgWJgzUI2gQFUNBrjCKmpuEd37oiWAW7dDQHx6Fl5uiX6iRRLAeXZVdT
	 OBrTPMDZXmRMLeLjC32eGHV+yjC0Xd3dgogYnxKO2KyeVBGVXt0TfGjVEIRjc4i5PA
	 WvdHy46j4EE3hCMUUplwpiWBd4d8bKG6j0jUS00/uGCK9Av49lYNM6j0IK8c4nsoGN
	 GuUktGWYKPHBrKvo+sxcZsYnKPN5VT2w/hBpMQel3egwIWgbTDssPHUIV788ttY3bA
	 iI5zgTM8O1vjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D69FECAAD3
	for <ddprobe@lists.linux.dev>; Fri,  2 Sep 2022 02:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166208465337.20784.9692447504710038179.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 68c988d7668418429876941f2b399fad27cce82f701b47c0532f0d3f56e6a464
Date: Fri, 02 Sep 2022 02:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662084653
