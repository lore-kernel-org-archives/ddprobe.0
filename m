Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6796363D
	for <ddprobe@lists.linux.dev>; Tue,  3 Oct 2023 01:36:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7CECC433C7
	for <ddprobe@lists.linux.dev>; Tue,  3 Oct 2023 01:36:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696296968;
	bh=xff8fF+JWIJUOk2GiswvJtPo3p0oBtRmBsZs3kRHpuY=;
	h=To:Subject:From:Date:From;
	b=gRy3jGwTtznFawCniZwlIzS+5HrNB5irM6SFBwHAnuq2uLmz8IlhqWRgxsD8T201f
	 F/aTn7L2uFezDNPohf76eK3/I8G03/AkJw4C8zdAjTnMyLXa/f4R2RvLW2THio424E
	 8xTZrK2TcKUWgMywhO9N0Vy5aasolMvdK1B8AtDTrNHpK9KHRUanXPCGV/QgHJIQRa
	 ImY5OsHP6ISzo32vQipOZQLZx7Praxfz1IDXDTkivawwPPmYrR+Zjkkv0jpqlU7MFY
	 GRmxioroh2bQjJXz/IRJc2aIER7AEeULPMMc7JcLUvOzZrlI42yswBkYqKbYurDJXK
	 oOwkbGH1g8PVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA977E776E9
	for <ddprobe@lists.linux.dev>; Tue,  3 Oct 2023 01:36:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169629696868.32590.7837943707162061080.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 28f576c3faaaea478d2bb82cbfb2480e380bcd014125cc0ca0a1de4e73ea5ef4
Date: Tue, 03 Oct 2023 01:36:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696296968
