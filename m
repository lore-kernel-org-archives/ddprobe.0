Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 351F8EA4
	for <ddprobe@lists.linux.dev>; Tue, 24 Jan 2023 06:03:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3B50C433D2
	for <ddprobe@lists.linux.dev>; Tue, 24 Jan 2023 06:03:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674540185;
	bh=PSpEXo9Lze7HAFwhXl6+/fxk/kJd0tqY0j27K6gMVqU=;
	h=To:Subject:From:Date:From;
	b=KgetMlF4hjtpVq/duDbSgLCRig/YLgmIrhB9R5f4qJOxKeG9MXofEe7JxSfmV7pF8
	 1+4itZidpP7hkAlrdcdkR2dq4fvqncFjY8HvlhUFd6EUj+zkqJH6RN4A6LMOC9/o8M
	 QxCin6XGIgHDWfMpptRyngpMJ1el8aT+B2E/MedCW58qyrJokjcmIRShz0ESwuJ3CP
	 HVMQZEfGJ695Qir+qH4DtO3Hcxh6OYhAwQEi1iY6cOkab5mcHN9ZRX+BM6qjnQEUsx
	 KrJGWHPxyLbR50WysJTJfqZc2AYBWlO2mULvdvjIn+ovFnXPR9g5sIyP5oUImeufW4
	 Vr23//ACzMe9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA9CBC25B4E
	for <ddprobe@lists.linux.dev>; Tue, 24 Jan 2023 06:03:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167454018575.32588.10891587245044633503.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 058da914dce9806ecf07cbd66609c53d529c2e49bfc193a14b37a7cbac8f1b19
Date: Tue, 24 Jan 2023 06:03:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674540185
