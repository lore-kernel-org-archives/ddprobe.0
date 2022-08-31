Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB8BF652
	for <ddprobe@lists.linux.dev>; Wed, 31 Aug 2022 06:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 67DFBC433C1
	for <ddprobe@lists.linux.dev>; Wed, 31 Aug 2022 06:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661926853;
	bh=u1haqhsvAQxjlN8BSmUhIJMAqaxNDQKFoPVC5aX7sts=;
	h=To:Subject:From:Date:From;
	b=jpt3ugOF+RD1X73GMfiNKPMW/ur/tjNBAuQdu0/HPEUp9VpB3q77J8ytXWjfaQvWb
	 wMufan/kZmWGfmx3i2wT9GwJKht12JqKW2CjejPsZ18gv9R6H28BYE3fJcV7Pp+aG4
	 4j21sxz7uo0y0dGSJ/2Meyiu9k8Sv379MhihI4eLomIFwHL8v+1PkXah9CBKE2X+sx
	 f+8Hy0EBk+geOOAWUz0O5TtGN4k+KvfdspyORttzzjTZw+RZKzbf+NBh61Ai93PxkS
	 ylpCDGwl2bJoHvmPKfa/OxnVk8g+zDZN3LWIBiwZ75pJELSav5xHKJH8n0J1Qi3GTL
	 Xh4SF5cKX4HZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4E9C7ECAAD8
	for <ddprobe@lists.linux.dev>; Wed, 31 Aug 2022 06:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166192685331.24357.6670208944523502661.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 514e802259ec044b15716e3497b3a4a525700dd40559eb3d41756b0949e1dea8
Date: Wed, 31 Aug 2022 06:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661926853
