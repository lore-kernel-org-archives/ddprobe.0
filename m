Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC85E7B
	for <ddprobe@lists.linux.dev>; Sat, 22 Oct 2022 11:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6F32AC433C1
	for <ddprobe@lists.linux.dev>; Sat, 22 Oct 2022 11:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666438253;
	bh=HPlkOMI8q2/w2l60AuXLcbaKlrffS14OEng20TKg/O0=;
	h=To:Subject:From:Date:From;
	b=YkbMHwI8qg9N9r+WG7HmeeV/7Qk7dF1XZh2jLVOcZI1ESjkrZxDTfiUcpHHyK67+i
	 A3cHjhuTHz1cs4ZAxt0BKm9vRjnJFL01Kyo+7X19jlZIcyuWs0d2/A5N2Kt5ZS2Liy
	 uLdDP9qELLel3TK7OV+xBtBwcc7mMrKWBP2ekogXZ2yHJbfnEwF/mxekVyvTfB9xlx
	 AXrnNOqcGrk0cggoKq7ldkNQQYl100jOzQAVYRWxqTo/91J2Ir/64ueH43FuG7woXe
	 XDNihamWvJzSbXtN4VeEsacOX3Rgi9Z8SlqCN8Ahop2CZfmJR/mKLiOuqNLktFCXrz
	 58S9YnqCq6pBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53415C04A95
	for <ddprobe@lists.linux.dev>; Sat, 22 Oct 2022 11:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166643825333.13120.14789494939318287683.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a39db32ae652f2de89c0d64b502a47101ea8c07750a2c7bdb4e4508cd6d083c
Date: Sat, 22 Oct 2022 11:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666438253
