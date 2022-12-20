Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D8CD71878
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 17:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 891DDC433EF
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 17:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671556887;
	bh=emTifedZS3twF5m30/WBGracifihUiT7rz1Yb9cKIQE=;
	h=To:Subject:From:Date:From;
	b=ZpzjlbI3D9owh3YavT1+W/SVPxgF2b0N2n2FW7RZRl66UprQDTlS/KMnAews+CGcU
	 XsNSk0CEujsp7HGfYkbbncjMdbevjqLCPGHQLeRB4qyFr69ujguJMdxq6sYuAbdg9x
	 ChsmpJLBX1Gk3n5rkDL019na3t/+W3aoT4pAsIVjEhrqwzHQoBF7zcEPdauKdwKA7R
	 ZJz5rGpgeD+EZKt4WM7j03FMyzWP3oen30rxm9F70mVu6b9VUvwFoNDIxaIlfWszdB
	 yLQC8G3BnFS8Zd3hB9O3BZUg7F4x3r38oW+qbqkp3A7LeSRcXIlN6Hit2hRgXtm6us
	 KGwQKnyf4nKGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 698B6C4332F
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 17:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167155688742.14996.8043263524554435997.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aec9294e31b97f3a01a6fd078e25f0dcd2645bd8d5162a35894cae95b4e9b262
Date: Tue, 20 Dec 2022 17:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671556887
