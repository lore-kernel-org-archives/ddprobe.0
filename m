Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3356717AD4
	for <ddprobe@lists.linux.dev>; Tue, 30 May 2023 15:03:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE8B0C4339B
	for <ddprobe@lists.linux.dev>; Tue, 30 May 2023 15:03:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685458985;
	bh=6YFJRbWERXcJ38k/1r2cq+kWt4UKINex04LXR5DQ9YI=;
	h=To:Subject:From:Date:From;
	b=h73c6jBR6Q8m/Cr6ozXrPBwLcGx3Z3RnZ+/EGCfZHsel57gmV80/WTEAIaSlveLIL
	 M3fWfTd4SDcyXTA9gON41cSbnMQH9cDAz/qihliIAUWOL0RjxKzd6n2fse3C4YNu2f
	 +Rg3b5C6C2AFcr116hERCkVhwNCmY7RigkfiOtsq+2Qo2zTTeIXwyXEocsVUSNJ2xl
	 CcfNjC+tjaDoUssCJS3zvsoNSLKjpW7WJvRzCSSjwqUyuWbffoAmbHynjF1SpSR/Rp
	 75gUsSQCinqzbOcW258QV4hvKpDZT9Rbxt/vDPSvDcm0Z6Pj/jbNHt382ku79KILmj
	 n83tvyZheoP7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BDB5FC83005
	for <ddprobe@lists.linux.dev>; Tue, 30 May 2023 15:03:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168545898577.26003.8582814099698698432.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1b051e9b40e042087ea61bdc8ccd637596a8d529727f79e8751feecd61679ea3
Date: Tue, 30 May 2023 15:03:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1685458985
