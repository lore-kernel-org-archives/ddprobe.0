Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50AF233BBD0
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 18:46:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781894794; cv=none; b=W8dGikfKADTcGJoHFjcBieeoZgD4UPso9bld79SiVqfYtHeQmCJSEbZeLcTKSrDnNw4/njiozzp3KhuSukdgtC003vZqecSuO7O3auXSn2gpePw405u+NWrimUbblhe9lwjGPG1qFzjEqfWfPrOwThfO/Hyv+4BXWgn33YMHNWM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781894794; c=relaxed/simple;
	bh=gUjuNYALoc5VyWiyiuAxZ88Usw4mlCuoWZEH++dAtoM=;
	h=To:Subject:From:Message-Id:Date; b=VlOs9y+G0kerqsCRCXAfhUca9aMd/LSBiZ6Oqnpbz0cpPzfEuA1T+EYwIxg7xZDVrWbjfQPJJG3qdJF+WdOlNv+NvpBt8BOVmN22H6bEYKh9WjvjkQyOeno6JUVYIGkxk9gIhrtR++0wDkJDpGVns7nmQ5DpLcfhJFwsWJp8f0s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PJ9x2M9E; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PJ9x2M9E"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D76D6C2BCB7
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 18:46:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781894793;
	bh=gUjuNYALoc5VyWiyiuAxZ88Usw4mlCuoWZEH++dAtoM=;
	h=To:Subject:From:Date:From;
	b=PJ9x2M9Ex4q2KWUS87JwXqchpNaWYWySVk7Vo31UHG1nUumQvLaWZzFILxyrvomvm
	 HL5ILIze1zhk92SxXipY3vEW8z/4M0VxFFEmgtENXIV2rS+CkNFv1W9ZV1euMWh9Lw
	 fIsSaUeUQKQf/8qBAwetrKtUgabg7DlCdQ0S2Dua8Lb/7VKDqTLiqp1jnHYnLiqrqy
	 /mZtEwCIhaFLeFgzd3EhoC3Dm61+k64OYgbFB2IQhN9y52godh9MSBjyHEsGsJBS/L
	 zILUdWEw+YrJEWlt5lYT+Uq3rAxHtckm2GMLhc6EtSgQU71LCJOGCZzSuA5IPlnWzT
	 DwngeB+/bWG6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3FD2CD4F26
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 18:46:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178189479372.15331.8670395894927116178.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 892b8ad99be89d4952b70570e91830c4b5124ebba83062ddfd026aae7694bcf2
Date: Fri, 19 Jun 2026 18:46:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781894793
