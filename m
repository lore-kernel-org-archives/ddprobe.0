Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AF6F15BD
	for <ddprobe@lists.linux.dev>; Mon,  8 May 2023 14:48:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2190C433D2
	for <ddprobe@lists.linux.dev>; Mon,  8 May 2023 14:48:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683557285;
	bh=nUUBsSlaR7rtTiNwix4SU+XSIL7fwyNsLUuVAosnWeM=;
	h=To:Subject:From:Date:From;
	b=tIpCxBFT+rwyV/qW9aCCwFNtyvQH4wAITIQsJhHyf1Sd1AfFh9dGz5dy3iXZbW68z
	 avHfdyUUx8xmU15Y2KEVj5lQ4E4CYbVmWu5hYR6Ng2kf5PxUr3WnXWfILoY3bZsFEW
	 pPKK5PYmkNXt49t+rNL6TL+1cV2mmChCgUSKd8+53hOaltXj2rGO1r6kb+E+gceUiB
	 X7p0Jbc4gzIE2QT/PNHD3/+hzp/v92ABOsk8FOezoyKmlqUICp1Llc055AA39wmS+5
	 s2GO67kV6xdt09pgOOm/PrqaTLKY07fzHKJ5eBZwtnNZtdOlJv/vRYbqyMVPRWgqdy
	 Utk7ZONmozJIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9F66C77B7F
	for <ddprobe@lists.linux.dev>; Mon,  8 May 2023 14:48:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168355728574.26958.11239283706724171572.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a70522b352728b789e351c6e4a9c6d6bc483ff32a984a7354bc419ef3f2daf40
Date: Mon, 08 May 2023 14:48:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683557285
