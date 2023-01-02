Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 068EB182
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 04:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8DB18C433D2
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 04:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672634487;
	bh=MLkgDMIqQpQ59sCjmsud2kFUXrkRZQEGxkwIx2dFkvk=;
	h=To:Subject:From:Date:From;
	b=PI2GEVyI4XolNnDa5+9gmhmggj+q7BvYppuFQXJ1NYA9596UsAmHsOZU143Q3xOX6
	 vbWngcP6cRJ6X3JKb13C99/PLy/fjyX+qzvR2p8slQ5P0dENWH5Br5Xq4JgtSMQ4Oi
	 WOP1/o+jMOE8Y4U7mAymu7Nzi54oAzPh/N9SlUoyWM80dPgtdvDzLjXwR4QNAAuXsd
	 szlKHV19qflGv0ceUVAzY1nuvhko1eAzqLgpP5Cu15EEuB4a8fVshXhZMq1dtqtQJH
	 kpV86KtAzZuOVgkqyPJaJC9d7PClh0rfRFppcq1i0w8KD7W/GcW+x0EqycUm4YQdv3
	 RJfh3tmmkzcNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6F787C3DA7A
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 04:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167263448744.31862.12566031952622967006.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8a6c772d1e83d96b3778ac4d80d884c4e6609d92dfb45285a225ed7333b5c364
Date: Mon, 02 Jan 2023 04:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672634487
