Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3428AAD5A
	for <ddprobe@lists.linux.dev>; Sat,  4 Feb 2023 17:46:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9ADEC433D2
	for <ddprobe@lists.linux.dev>; Sat,  4 Feb 2023 17:46:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675532765;
	bh=dxYZOrxn7Ww9TU4M4hS14gp4JaxHjJOLvw3x6QInkn4=;
	h=To:Subject:From:Date:From;
	b=cdKGnFpsOpJHPLU2Sq/abedi2YHbvnrKZUy9S2jquH0TcgeGai1l70+QUTXxPAoW4
	 vZEHiqZ7SkSngmuQj4LTIK+QgsssWKZOwocCuUEvUd5jszWhJ/uYhnAbMLiNjUBMLE
	 m30oRMpZNBUs34T2Du3m5em95j7mYAd9refyHB3s0MWN21Is5FYWMl38xbd1IS2lf4
	 9bA/pukkhFm6PxO3xwyHOhrJpuiW2LnyBxSeTN+ixt7W0TBvSuQclOWF0UkDcukgOZ
	 JNdkVyKWxYtjKWLATpqExgu6bOhQ6dFocSCy5LSI+c8vaElH02Zz42KkrAI7FUNRsp
	 sc5iKJp5UzBpw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF7D5C61DA4
	for <ddprobe@lists.linux.dev>; Sat,  4 Feb 2023 17:46:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167553276577.26945.53563670920939608.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5dd2b6d84d7e03633b4fe627d4c301bb1aa4bb12103f9a972d6a37a315a869b5
Date: Sat, 04 Feb 2023 17:46:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1675532765
