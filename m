Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C7F6E2582
	for <ddprobe@lists.linux.dev>; Fri, 11 Nov 2022 11:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 730F4C433D6
	for <ddprobe@lists.linux.dev>; Fri, 11 Nov 2022 11:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668167454;
	bh=La76tRH1xT+iM+9F/smORQeroRaxISJbhBZFv/IwCc0=;
	h=To:Subject:From:Date:From;
	b=dFsmEDHxJifGEXqMT7C95DitA1aWeQiiFxKTWtxY76BMrYPFDgTg66nR3yIfJcb3j
	 XnsGhxI5ALYnc7eVX4cTpGMEEMDlQ/2vJVEjddNJbtL3jX5GUk2D5dlIxpSN2vGivQ
	 atXALO2IXYH6LlXWS9mZ4k98bOT90tDTjDVdRcg0KofKa0SPGuBvPrMRMy3NMAfvHV
	 LqumZsqCUYfm67AahEGXNVMK2WHAnbc5xeRtvrNVJddXWZAPUwURq94fUjyC32uPTj
	 UuIKaGkAPFDcBzQOtlicFqokbkCL+eiH6T4smo71ZzCqDmtIw0CBI+UaJV1SdQIDVg
	 g3zeV2qwvzMcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5CA74C43217
	for <ddprobe@lists.linux.dev>; Fri, 11 Nov 2022 11:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166816745437.14434.17297699331008654683.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 909ca2d18f4ba2a82b7199fd6fcb98d169f578e93f9fe09185f0d2de2fe5503d
Date: Fri, 11 Nov 2022 11:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668167454
