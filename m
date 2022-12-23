Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D37DE8476
	for <ddprobe@lists.linux.dev>; Fri, 23 Dec 2022 12:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 807DFC433EF
	for <ddprobe@lists.linux.dev>; Fri, 23 Dec 2022 12:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671799287;
	bh=VbFTYEv9prBfDdFBsvfE2mfaPrhqqc6qdfAGGC275dw=;
	h=To:Subject:From:Date:From;
	b=IX91J3DjCDBDWJS1WkxTKemiOi1dqLDUnB0xSLqTrRB6JXdLMifyMJGkwGi72o1kI
	 52ag7xAjTOAi4bDLOWIdD8brR6As6QQX5/Ya20YCp+KqKcKktMt0aQM1Xs7RsUyLJw
	 VCM5rTk+h5huqMyCu1sFVaRrtdceCYfMkNjuMRRVsymPrlLwfKPx3z8+a6OsS7UNDA
	 PN4kUPP2WlXellIn1RV7bZUmGLWEO3XNClDivh4/ZP6VYiRMNaaXfYr1ZYmqb4W/GU
	 REiNhqEfAgVUVbt7HBGj8PJ18rIunhx5ksLF9nBCqsN0mbjE/zAbgilZKnqr/JjYqk
	 xAYVxkYnjoVdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62F2CC4332F
	for <ddprobe@lists.linux.dev>; Fri, 23 Dec 2022 12:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167179928739.471.8899603718899139470.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ddf2b17c055d372ad75c538b876fd90642edc824b85d2fcf5196c3071abe6700
Date: Fri, 23 Dec 2022 12:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671799287
