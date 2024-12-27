Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 267C019A
	for <ddprobe@lists.linux.dev>; Fri, 27 Dec 2024 01:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735264554; cv=none; b=HgCs2daXRSFyW8MeUf1cV0twAgn1KOTedPlXd7/Zx791jJjS20BWlzxX3/Cor+ZmBobV/gDgw6/mNa+VGK75F1/+16Cr6rvQU19x7FszLPhoX8Qsy9gFkf+cgLY3mRaHp3F5/21C2klM5gwfTsEUG7R7A0MQkfcmDDyRVtrU1qU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735264554; c=relaxed/simple;
	bh=b1Uuhv0cf5dNim9y0eJTSCbv0dV3PViICHY3A8aRJ7o=;
	h=To:Subject:From:Message-Id:Date; b=pxMYEtdboBgMfW/MD0aOHnBjvw6SiQI3lhFWtV2pVS0X9AJcTo9UE0TkmMjeWYetEDzTEACbBH8IwF3TETPEhPeKh7OkfwHOe0MhLRGLPdPuXuEazybeZLla5YyEDW31QBgJvwTIp6SKl9BCF42lnU/RsQV7nBnnLNnVToJbDjc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NmFiuAnn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NmFiuAnn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC796C4CED1
	for <ddprobe@lists.linux.dev>; Fri, 27 Dec 2024 01:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735264553;
	bh=b1Uuhv0cf5dNim9y0eJTSCbv0dV3PViICHY3A8aRJ7o=;
	h=To:Subject:From:Date:From;
	b=NmFiuAnnh+tFFF1xwLtV0oTSQYdMV+qUSknMt6TfnFuQlR8+UA6iIoDS2/6XPjw0S
	 TV18ahIlulWFaLVmGELeRaJPpXh4uTzWfSrXghPpvcGYTU9UukOb/ab84aV2dGRv3K
	 /LdCPjFxA2Rt2LrH0wiPrjsJa2nA/BsJA2G+YuJoRrri1+ugF1pXWmg1CH2qh8kVnA
	 V0WTYAQLSdXKsOtiJF2FH88wElPtPJd2xZD4TzEtpkQSa8QQ58TnQC1QmLAUMj3SRz
	 9DrWEGD+5cwIex7CPfHxOu/EjhSJGhCoPw0y0JH6baGk9r1rW/+unKs+q7BXu+ofug
	 Yt+8X2TJrKr9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BABCE77188
	for <ddprobe@lists.linux.dev>; Fri, 27 Dec 2024 01:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173526455360.1413.6581454576402939145.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef1238d89bffdb5d115e6695c504517e7075c57de14ddaabd98502c4ad738854
Date: Fri, 27 Dec 2024 01:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735264553
