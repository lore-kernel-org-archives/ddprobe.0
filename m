Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D3533207
	for <ddprobe@lists.linux.dev>; Fri, 21 Apr 2023 16:39:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E788EC433D2
	for <ddprobe@lists.linux.dev>; Fri, 21 Apr 2023 16:39:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682095145;
	bh=2f6pENO8u+EQWIF+arqZ3WIwi/pLKI8IDuxNfyMVDxs=;
	h=To:Subject:From:Date:From;
	b=TfOqhbhc8wPMdxhKdjVqwT8i/AT5ItIhAUpH9DuJhsPoq+sMtUpperxetQRhti0TH
	 unoahAkVL2NDyedPvKcqe00h/oKaZrwUandNMklVAf0VArWEf3Y+PPEyz4sNKkB1Zr
	 CWx4sC/UMzsmcZMN0/ObWD6Y6HjZvgdpmBi6TajLnywT734PQ+MPRs47m2DaNzgA3q
	 txApkua+MxTDZqkRmCS6sJBJ3DCt9YV+mx8iISaPypioYtkRHiFpeYlKevPdmdXpNf
	 VIF6BQe+M+ujBTEIUKDSFo10tghTO66eejIGVB9g74se+BE0BbsApCCNQdrLgak8vT
	 Uj+FxEUGjiK4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C71C0C77B61
	for <ddprobe@lists.linux.dev>; Fri, 21 Apr 2023 16:39:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168209514580.24582.4261077202569987266.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 730432f2a12692e54bab27dbcf4d366f30e382e216a78be9cbfd3f2003cd455f
Date: Fri, 21 Apr 2023 16:39:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682095145
