Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59F0723751
	for <ddprobe@lists.linux.dev>; Fri, 13 Oct 2023 20:07:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dL8XrKWt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C79BCC433C7
	for <ddprobe@lists.linux.dev>; Fri, 13 Oct 2023 20:07:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697227628;
	bh=tMU5qjoWI6mG9fEOXOeG5xyW6AQDBUTTn2m6q0s6xVY=;
	h=To:Subject:From:Date:From;
	b=dL8XrKWt9v48DtLwotx+CYY5b6rMD/vqRipv8A26smjm4297dJxKNo/ssCdMErmwe
	 XOnr3gnrEFh8F6Xstfyk7EzxJQaMnxen3GurcLiOCr4TEahktTQrRAOR1BnZz+7deG
	 pULDg7JvdNdG74c/8YKuGkRv6svtVkEIIYgPkoVqEjTeKYZYNCHyLIUtZaq1jSnlfe
	 gUhejAGlSLN4/AvacbUNexkSoCnxvgKkJbNH6VdN8cdOQBh6NxMDSl3CTUfAbHbZOw
	 irbRkzPc/KCk02aTi/4uSgEVk6oqSbAe/iatDildZXXdR3sUNs+WbgSBdtbVqhc+B2
	 WRqJU0/aL1RWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABBD4CDB47E
	for <ddprobe@lists.linux.dev>; Fri, 13 Oct 2023 20:07:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169722762869.7737.12084574245008623212.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6d8c89afc2f39e893be2cafb8f89b4b44f8253cdc10016751bdec5bc23bb8778
Date: Fri, 13 Oct 2023 20:07:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697227628
