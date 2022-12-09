Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DBD2DEC1
	for <ddprobe@lists.linux.dev>; Fri,  9 Dec 2022 10:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 81E53C433D2
	for <ddprobe@lists.linux.dev>; Fri,  9 Dec 2022 10:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670582487;
	bh=8Oyz9gyQm4JM4HnqbMdM9VamybFUAq1o3WHJXqupJgo=;
	h=To:Subject:From:Date:From;
	b=LpfuXqOw9qnIwCxX+JPWM4XwJ8heknV38v8T0XjgrVMt2XHQGgHOUiodickKAPUAz
	 jhO7Yt4YjKG5odt2CWCd0fRTYh8RUs3+yJTDBGflcna7nbDYOdSFguClrGvBDlOhsM
	 AnIWmed4PeLqxrTXCHhKJ4wnxcPIL5+ouQQGAKlrmaHjC70QVVzsC0MQV9nULIJqoR
	 UI/XXVBkMLuVejI19wQmqemOFlz+IJi7jLYjU94qzmVZKofUbGrupuo7baGGTYo/hK
	 ZVxh3xc3byHWIyq1aAWLbAUkLOILJcg7W3CtVYHscvENDIxaoUvymy6n13lMmrQUxL
	 j9jDlmZEdT7wg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60BC0C4332F
	for <ddprobe@lists.linux.dev>; Fri,  9 Dec 2022 10:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167058248738.29861.10108890893120603780.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 627f560252616a3cf3d3118d25a07f977f24915464529e5189ca2ed4c110581f
Date: Fri, 09 Dec 2022 10:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670582487
