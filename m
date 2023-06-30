Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46D4A20EB
	for <ddprobe@lists.linux.dev>; Fri, 30 Jun 2023 22:33:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C34BEC433C9
	for <ddprobe@lists.linux.dev>; Fri, 30 Jun 2023 22:33:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688164388;
	bh=zfkaMihIluQwXPwvvOSO0jpvmglbUsVjr/1zFVHE2Mk=;
	h=To:Subject:From:Date:From;
	b=jOqpPYDrhNNUP+iDVacAHSZkabWoKS09HFkYnU9ucYp+TEG3FxnJGvpSpZ4fOOEZG
	 BU/npzRpizElRHZq02Nitk3VxpPYJzKQEWx1NsngAXSF+Hkg5IdJ6jGd6Likj0lwTe
	 RK3sN2SOurWhAMKCoAeV6s8YQCiHdrcv7Jx/Rfz8hDQvhKwMJ5We/65v3cvn1TD+wB
	 Uks7os0qAMzh2CDXnIlUHb6RqeTVcspN6PuM82ChJmfEhsiOpYA8AQt5bYOqEJnXtY
	 XeO4+yZKLWqq5VwnuMCtQA0KRG16+maanXb2/InfkFH/UQWWUyV+oTDE284JDQGdi7
	 +oM7GL9rghs+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5B57EB64DA
	for <ddprobe@lists.linux.dev>; Fri, 30 Jun 2023 22:33:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168816438867.15661.805996902666840603.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9a37d8908eff16199b4a2e4a3d0ab828ac6e8bb60cba628240527e02607f87f0
Date: Fri, 30 Jun 2023 22:33:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688164388
