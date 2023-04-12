Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FF68A935
	for <ddprobe@lists.linux.dev>; Wed, 12 Apr 2023 22:25:05 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8520C433D2
	for <ddprobe@lists.linux.dev>; Wed, 12 Apr 2023 22:25:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681338305;
	bh=62m8C+yecKKjCWb4vTin8GAD230V3hFbvEqH6H77G8c=;
	h=To:Subject:From:Date:From;
	b=CE4xkki6V0yJ5CmZEr0qEoxcI4Xwdarlxpeo5thqPjrBAArnx5s2dUy17uB3z+Ig7
	 sJcGApk+7RjEMyL1hGiP8bnnZPjqIBLHazpHJZdFClm67XuGjUmz9Y53jYyW5Eel6H
	 bXvE9y528Nt34+G7aBsc7R8NuZxLWHG12ztxUbrLgiS5APslFKPVgMyMJmxdgLUOyr
	 6ttXnRcB2NF6fsv0uj/tH/doru3dWZpPzO6h9XF1yjK2BlOqZ9nAEhovFnpVrEoUoU
	 +oGj0u/YE+wrKXJtszPsIemn8kirYWR84SUKQwT/tC1c4zqVqIC9vvhhJ/p3Fs5KtW
	 PaV92RvbfbCvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2CECC77B6C
	for <ddprobe@lists.linux.dev>; Wed, 12 Apr 2023 22:25:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168133830572.17093.7521220106140879594.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b806c623e214f29b754832f7d3f028becc981645ad2602fbdf697974376e0cbf
Date: Wed, 12 Apr 2023 22:25:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681338305
