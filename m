Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B2DC6219E7
	for <ddprobe@lists.linux.dev>; Thu,  4 Jan 2024 12:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O9Lx+a0B"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8887CC433C7
	for <ddprobe@lists.linux.dev>; Thu,  4 Jan 2024 12:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1704371296;
	bh=QmEJcGQnqUosafxIAfvHdsqfqWJY6/CxhSB2/MrwV+c=;
	h=To:Subject:From:Date:From;
	b=O9Lx+a0BpzbE025Eax87dcrd2e6NNPFoUFZro8l5pGFpFopdohv8SfG2opxhTj+Bt
	 G6wOp7QkbWcojKQ6QBgc0XXTASbtasB7qYhoOs03GF/T5/puh+Dx4Gvj+GfunVr0cI
	 /S4twrwpdPTCY9V9cXX+Pvlw4+ZGYSWOUO9JS5MhHIi78NCpj51ajzgoVgeLrT03ny
	 8MsgvXRk2JyhssON1Wm08QpVs3fsqUCcs0XEVfcqC37E1GvzaGzGG/18WGaAbZJjH3
	 LDT5TYwaeMYnybwCQdxyhmcDyToM2UJqHoM/8kf0gZUGBRF006J910GbGrmjMgm/nB
	 rHwO/FgRrQvEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6B0F2C47074
	for <ddprobe@lists.linux.dev>; Thu,  4 Jan 2024 12:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170437129643.30492.13285712767594835419.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e551b899508433d180970d3ab4d06ed24b6a064cc8987d7128343fd30675322b
Date: Thu, 04 Jan 2024 12:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1704371296
