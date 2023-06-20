Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5627C1119
	for <ddprobe@lists.linux.dev>; Tue, 20 Jun 2023 02:22:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD1E6C433C0
	for <ddprobe@lists.linux.dev>; Tue, 20 Jun 2023 02:22:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687227728;
	bh=V4q37jwnC3tRyn7P08y2Ju8NngM/SaBkyUZEtbJiDSQ=;
	h=To:Subject:From:Date:From;
	b=GLBU9D4hjRNEqrYLTinwLMIajV1HyDtAPen+3fMXas1OnuRc8qCSLs7lm6+InmQe2
	 gsJ/KuiK8LWTrVrGuunn1HoB27WLJgIaiGckVPHbN47ZojQqzn8BFvjaR6MdYsLdvU
	 suJrbtsDWDWIUp2WTLF/3KhiDEn4N8YKJvzlHrRgMDSCXAGzs9HJgpPzuNbn8Xql6j
	 nFMqjW7trDhXuF0ZxJnKTrSovABrtWxeblcky2k/qqReIQslR7IgrgzjCMnvRqPWSq
	 MziDaUgC4nCIAfYqf+ZWK9t3aDDGne/olXJoWu1HlNv06j4CZi8MJEcXV8Eaf6Cpgp
	 XAJUgrPu+u1SA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFD2AEB64D9
	for <ddprobe@lists.linux.dev>; Tue, 20 Jun 2023 02:22:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168722772871.15054.13595200729910282338.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5c7e444bdfce46e0c7c48f1d7d139f3af7001135b5e030bd007c673d88ff7dd4
Date: Tue, 20 Jun 2023 02:22:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687227728
