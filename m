Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AE19733FE
	for <ddprobe@lists.linux.dev>; Fri,  7 Oct 2022 21:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6A309C433C1
	for <ddprobe@lists.linux.dev>; Fri,  7 Oct 2022 21:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665178253;
	bh=+K8/CkFNW2k4+421B6GtMzJplfcbfy/xVCIPmTxO0JA=;
	h=To:Subject:From:Date:From;
	b=W+FZjeVEI0lKjLys20HdNbsK910AjacxTeeCu8Z6mOyQkp7fK+xjZ7gBzAtIVb9Al
	 lnSI2PbE/782u3+4g4XFdCOpXBDFJghjbUe/AnRi5rLrr8JcXlNNaHHpacX3yLujfY
	 x2KZSnUnLTkM7NbeA+SSwo0SUHVrhkZtKAGvFw6ozXLD5m8ai/1Wum/jYRBBdrIp6O
	 +r+myQsF0ysQSchyrnwQyDSVQ4O1vwQZrpnW8aSByraEqJi3ZakpXySjQgn44zpcUE
	 ozTxajkDarzHq9UTEK/xmAT2IG/P11R8niihg0jZiP5aImtW5sLoRt2+VqNY3OqMmj
	 pClFXxDv8n0zA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52DDCC433FE
	for <ddprobe@lists.linux.dev>; Fri,  7 Oct 2022 21:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166517825333.32068.5074756955707695072.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 37760cba7f4606cb0a59db620e7147d68e134b954f352122435edcd392eb7806
Date: Fri, 07 Oct 2022 21:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665178253
