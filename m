Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D60F746B7
	for <ddprobe@lists.linux.dev>; Mon, 16 Jan 2023 00:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8BFB8C433D2
	for <ddprobe@lists.linux.dev>; Mon, 16 Jan 2023 00:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673827287;
	bh=2SPBCYa4jlHcGF6viQmhE9gQlMTZjzksqnt5k3CdzPM=;
	h=To:Subject:From:Date:From;
	b=mIFBBgfEtmnZLVqoE9IduKysdPlEYMIdsuhJ7Y/+/hGn91u3IGk5eiue2GGcZ7IE3
	 apgkpLQLU6fhOPcAwtDRk0CRpMuETOb6Fxdk4up+SbICqLScVws4PAdQe6qL4QML63
	 Mpn47ax7otUAWh1HwTdU8qIFmeMzvHUuTT87QXKuUScsiTp4mhLwC97WMJkdohQgFi
	 DtFqidKlZHUwlWHh3TWUY+95cB+kWq0sqJXHzM6eBU8j5Fd3FsNW6aTevQzNHJtVab
	 h0iH57GycdYiX0DzbH8w0xLI0wT6YZT37q4jK6dwe2f3g7yunMl/na+/1U4hXQGQnH
	 W3EJB6Am3o2JQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 709BFC46467
	for <ddprobe@lists.linux.dev>; Mon, 16 Jan 2023 00:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167382728744.19221.7439679296452681565.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2ad35cd937e2d93c6ffc9318e64ddf3a5343ded47c975fcff3435d508405aa04
Date: Mon, 16 Jan 2023 00:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673827287
