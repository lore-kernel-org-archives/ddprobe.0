Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B8B337E
	for <ddprobe@lists.linux.dev>; Sat, 26 Nov 2022 02:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 74F3BC433D6
	for <ddprobe@lists.linux.dev>; Sat, 26 Nov 2022 02:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669430454;
	bh=CwMltg/u4zCjGB6P3DSE3U03ffhUgjJCxnd8Q2rF+h4=;
	h=To:Subject:From:Date:From;
	b=GMbqhPrUaAq5//wGXUtfhunO8kjQ4EE3U9taTR3JL0wleFUW1uJ71drF9SWW4SZNW
	 HjumRjmJa8MKZQ9rJYXHj6IRBNV8Xm8y5WttczgFtX+K/Q7q/F6eIrpJiTJy+TJVsd
	 Qxu+daYi3Hfgi/wc5Ib+DtN/kim0OUh6cmYp9HRPZc2GXsEitScY9H3j4ghADPhlAk
	 WWTDejWjBPN754CJPVQU4yt+uX+UBG32QF9hXb+L2yH8ZIULyjxzDlbNuI84GAZ5cQ
	 LzkrsC6ZYlvkxH3S+5h3pGAAtuTlT2y1194C/WBPMCqs00QXlSfPjE2vqSpTwgC/bb
	 vtcvYgUhD6lMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5B377C4321E
	for <ddprobe@lists.linux.dev>; Sat, 26 Nov 2022 02:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166943045436.27321.9430082310645996447.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8a085711cea7f5033252c3aa099ac1283894bfe558a3afaf1226510da913648b
Date: Sat, 26 Nov 2022 02:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669430454
