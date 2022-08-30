Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C2A2A366
	for <ddprobe@lists.linux.dev>; Tue, 30 Aug 2022 07:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6A24BC433C1
	for <ddprobe@lists.linux.dev>; Tue, 30 Aug 2022 07:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661844053;
	bh=igASvmAXEfzFbkGHvIYGSh+viiUnkrq/zU7JREkFFjs=;
	h=To:Subject:From:Date:From;
	b=gApGX4GX9CbIy0jOtQNkWkPnZJEeTxWiSfJreW/2tHlZjgV+YGRhVmec0Ns4n7CJ/
	 yaNUPb1epgmTlNcCU1BJH+iAY7dUDTp/lArR+hZFBvs5+W9+4+rA6Un0cOgypd4u0W
	 83CtO77x5i8ZsAmMZsOMCFa2Ii17uuXZrIEPPp9HyQbszDAwBkLjkI17otv0+IJ+8V
	 qD+Xuv46BjPUVfv+S1NBAFTH7v3ATL01PVeo/sIxPsZbXyMtOP/PBpSVjDTrtj6pc6
	 +w9Q/Bp0TtBd/tcBdHNMuT49ClHF8+9SJkUwYnkVcP5DCTpHjq30tLSSJ4sR1Gnn8n
	 GTblFbs1YkmJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51349ECAAD8
	for <ddprobe@lists.linux.dev>; Tue, 30 Aug 2022 07:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166184405332.9655.7344481037144717551.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b896cdaf6ea2d2a5ff12a551164a85b5bbd06dcb1d7869f502ac72ff8b22af0
Date: Tue, 30 Aug 2022 07:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661844053
