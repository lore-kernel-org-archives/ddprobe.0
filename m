Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5250910957
	for <ddprobe@lists.linux.dev>; Wed, 11 Oct 2023 10:47:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MCWLzTVr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2A32C433C8
	for <ddprobe@lists.linux.dev>; Wed, 11 Oct 2023 10:47:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697021228;
	bh=RVtsfJ6lY9etdH0+kcJVCeCz/hB12HnFw0dTzlDPPZg=;
	h=To:Subject:From:Date:From;
	b=MCWLzTVry0ox2Q3bhj5dZPP1vl++SJgA7H9ld20xFDxqR4qX+PKy8w0xAapXaxEJO
	 gA5ztguA9U2X/dv7U19IjAatnqDVz59Pnu7xkz6C11spEAcyWBNX8eIV031nKC8laF
	 8z6wquOyZ9PnzbRmMz+SdF5LPDGxrxNywrkPAGzLyG4nRH63I4+9tJ8mxDuxgUj4HN
	 gJu7SCEnzy/LhMVb0EnG2BAIxV/cuvJ3Anaqhkud22D2+f+RZEoGFUO3DUvu2Q6C+R
	 3j0rSpZ1ZiT0tBDj9tGcn3KlnJsa0GEmscLZWVuOw6w0lFfXsSe3eTZ8FvJNPV2e24
	 EYZtw1dvjWIhg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3469CD6E54
	for <ddprobe@lists.linux.dev>; Wed, 11 Oct 2023 10:47:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169702122866.15330.553417002684528072.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4dd3e734729f25ae361cef1b8ee8870ab70e4d10f0938f4a4f8be1d7f06ceea2
Date: Wed, 11 Oct 2023 10:47:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697021228
