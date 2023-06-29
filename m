Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 65CAD2565
	for <ddprobe@lists.linux.dev>; Thu, 29 Jun 2023 12:53:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDD2BC433C8
	for <ddprobe@lists.linux.dev>; Thu, 29 Jun 2023 12:53:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688043188;
	bh=zTeqeD5wuhl+3HVHkV09t/rtrkEjuL0Twl0ht4RBsCw=;
	h=To:Subject:From:Date:From;
	b=QX4Vu3Yrkjoa2t2z9hhrf7VrYqMn1LK/ixuXSKjKYsLHbUJI4QO7QM9bW8ymtILy8
	 3ial9VhZ3y4HgZMzsYHQ4V+ntx8bYjghMxlqotUiHE+/svDN1pvkrRoFEBsf6CTyCY
	 frB3IHfm77+bKoAg+M7iYtek3F3NRXOmKqIhHITnR8mOTCbYJXQuZ8LOh36Y99XO5K
	 K0a+yUZuBpXS8h4LnZ17wOqzm+5/Fy089XPSN6baNTiFYFnMjxb8+ZIxrZ8E+CQOo5
	 M2UhyFWs290SobxOptVx325jaP+yy6ku/rG4H83zqvuVXAhUKG5fzT3U+nQSXJEdgC
	 3+Km2Dzmud/fA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFD0FEB64D9
	for <ddprobe@lists.linux.dev>; Thu, 29 Jun 2023 12:53:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168804318871.16004.687548470005834957.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 335818a8cb029a68a6dd1de5c623f8cf0d3e24cf0e21531be412a4ff9c53334d
Date: Thu, 29 Jun 2023 12:53:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688043188
