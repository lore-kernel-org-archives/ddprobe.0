Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE3816D24
	for <ddprobe@lists.linux.dev>; Mon, 19 Sep 2022 18:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 81794C433D6
	for <ddprobe@lists.linux.dev>; Mon, 19 Sep 2022 18:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663612853;
	bh=6BLOjf4/xRqDzDb8d9Z0oJwl3MoSqef6ri6bCGblC+Y=;
	h=To:Subject:From:Date:From;
	b=MulcNPDc2LrEyB9NwCwGYSxZshdPzTnDXRjteqrbb6KWL2854bV1+5D6Knkk0dFTY
	 uw6QLik8n/20Gejj4jpdDmAcod+MZj8P+Bq8/dbYTl1wO+OcyBCWqIRoktvniFoBaZ
	 U77KnL3xIVv2MsbhHghjCeguMOP/x0qm4PA9AKRwCEHeLIs6sk8Nw8WawuExLH+5kV
	 YbBRqU4ZnjPwGfYMVUpj/kBnPWlJ5zseeYAGrHC8G+5IpxYYzu5NSzCEy6lGoOUnEa
	 py10ZImp1SaafB1jPF1F3xBZIuRcBBA//IiQg6CEHMiyIvqV8I6jntSK/EyBKtsnjQ
	 XucWgQcNjOIxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61BE4ECAAA1
	for <ddprobe@lists.linux.dev>; Mon, 19 Sep 2022 18:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166361285338.6371.15714751358296612648.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8f78c2b8c1c57143ea44155e45a452ca4d64e5edfcbe88f5e4c9ee98f87c43a3
Date: Mon, 19 Sep 2022 18:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663612853
