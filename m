Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3692517C7
	for <ddprobe@lists.linux.dev>; Wed, 15 Feb 2023 02:07:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D19B4C433D2
	for <ddprobe@lists.linux.dev>; Wed, 15 Feb 2023 02:07:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676426825;
	bh=Cua8DBtEjXHRdM1fcbM0Z/K91ICx7cGIiOya+U1qQoA=;
	h=To:Subject:From:Date:From;
	b=CUhcQff0I3leYWO5lQmS72480Dvv4Aafrd9kVZT7s+JFsm6XR3qpgIMkaWPAObd19
	 W/G4v8JadFhScJVIhvPc108G6VB1dJQ65ld7GSpxCBJRXqTALWnAnJJ/D10xT3+t3+
	 ksWXYgD0m3Y0KV1WRzUmt/HtT5K8oeOsnKPvja7TVTjRgKiej3qxHkDLkCbNIll5zj
	 YRUxVNMrUkQiqJF8mvOqUNmg4ChPPawmIXVEL/hBSfhHbiAKM3qhCtUD6Ga+pfmTba
	 Gge1Ykdj3iEn+bd7CBZMCXMrweO72RaTAIbMrqKxES2vtY87RizrzSeAYVOSlsqLuo
	 6wm4Ln4ra77pA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8D60C61DA4
	for <ddprobe@lists.linux.dev>; Wed, 15 Feb 2023 02:07:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167642682575.11549.5274882050357555568.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b13a2d07d98062056c7aa843c79dc92562e3cdec9e87fb7bc3b9e6ea9708e564
Date: Wed, 15 Feb 2023 02:07:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1676426825
