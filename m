Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 562EC7E2
	for <ddprobe@lists.linux.dev>; Sat, 11 Mar 2023 00:15:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EDB02C433EF
	for <ddprobe@lists.linux.dev>; Sat, 11 Mar 2023 00:15:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678493706;
	bh=Q288girbsma/oKte4RnobQkLdWFBtjWh90eOs2v54qs=;
	h=To:Subject:From:Date:From;
	b=qMWdmX4PkuYI0qEHJnbAyoFPqsnXj8wKqoexFKmlpPMZwAISQFNALRdMf08EHQjAV
	 00dbteDa/tmvFztWrCsyS5eXcnNTe8I2qiyocfa/GR0btZNqmaaDB5GwSF4XtZxAys
	 +hXL8tOihzU2VADOoOo+BaWEt488eInjz6qRz5ERXMX3PYyWBMZri0WQjoLFAVHJCX
	 wTmPitlGhtVpnIh5tdhMUmFET+dJlkzS6K0HYj4OzSxK0LSSVcgm5GJtQ2hnXJu4+a
	 UmQyQAokhG980N78Tv3fYBWM3sLipcvt3JnKsyY1xGdlPWkzbL4I8Qq+8b4AA0aote
	 K2oQs7MFL9YZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CD42CC6FA99
	for <ddprobe@lists.linux.dev>; Sat, 11 Mar 2023 00:15:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167849370579.7857.2054631511007765854.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d8553ed647d3ab7daafe621a67d217e098cc2612723d1e982e713feafa58006d
Date: Sat, 11 Mar 2023 00:15:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678493705
