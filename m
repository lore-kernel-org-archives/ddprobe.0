Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B216923A4
	for <ddprobe@lists.linux.dev>; Mon, 10 Oct 2022 08:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 661A0C433C1
	for <ddprobe@lists.linux.dev>; Mon, 10 Oct 2022 08:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665390053;
	bh=fHyFNHaIwPsaXNtDoiv1Wl/MjyPTrw0t59LHQJsuUVk=;
	h=To:Subject:From:Date:From;
	b=CJEYOtPeBlyAswn1IfpSJkj5C6qxyDnDdguU0fcJhFhRhO6GtkFi3OzNI1Ycj7C41
	 9SnHeFm6ocbcScZNJ+nsCL2o4dw/BEDJ/sh2iLMxZj9/nbYoVRUWZM62P5SPpE/JtQ
	 PoCJSl+jFm7wIFeCzRzS+ZCzZ+s9Lq68xYhgbjx8W+CiXCKxjTjY4s4FMXrRxyqfJ4
	 VRQzH4amVb4RZylDDmBWGknzAcAATPLtVrc/PGjONK5hZPAQp6faRS12+CWH25soHL
	 x+q0A3cmFAjQnMFThWXFwmoqroRTj157RMC/LfVMG3QxOeBQDfYxlQJoqV6pg3kJIV
	 GmrDvkTvAMMwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4F377C433FE
	for <ddprobe@lists.linux.dev>; Mon, 10 Oct 2022 08:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166539005331.8372.614340600716237026.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3787087e3890750a406570b0311c71fb92ebfdbacb1e2c8a39a3d6f3c0f51700
Date: Mon, 10 Oct 2022 08:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665390053
