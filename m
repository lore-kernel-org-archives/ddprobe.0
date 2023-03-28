Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EFE8EBB
	for <ddprobe@lists.linux.dev>; Tue, 28 Mar 2023 07:53:05 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA0C7C433D2
	for <ddprobe@lists.linux.dev>; Tue, 28 Mar 2023 07:53:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679989985;
	bh=c/HrBiIc3T0Bdn39Ud0Vnuqx+bKCdHI4k8S0pqPF22E=;
	h=To:Subject:From:Date:From;
	b=DZsGojIMRHUH+qJGxn25pVe6IcSeEF72SPqQGW3swWUAayICvoIR/X4dv2aKoJDNU
	 7ULWqH9j2WtgdXAI+7WmXhMdDW/zv6eCQhnYDhxSXbytNtf4Qfn85qjQYHavQkz8df
	 bTTuPMEvwLv1c9VkEe/FxrSVCAP9MNj2Vbp7xFaRMjxrkWMvsCzTK7sQRbu/2nEgKz
	 rT1yQFUEwmZ9nIHpvtRFNOZ1MPO/Im17GtHqGHXkq3LHd7adkjYMprlAmKuCB9u7Zm
	 jOgm+Cbep+dbvvr5b5EilIdc5k6UF6Vh09LcOsL8iG+CWFkmudenYFNMVIFpt+k8ni
	 RwKvA2ZiQFAnA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B25FDC76196
	for <ddprobe@lists.linux.dev>; Tue, 28 Mar 2023 07:53:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167998998572.14244.11413213027055921215.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e94d0356145a459d0c371261d15d9029986f9ac38897b766475818a8fbda5822
Date: Tue, 28 Mar 2023 07:53:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679989985
