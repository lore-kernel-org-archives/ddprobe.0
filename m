Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 72FA87E6
	for <ddprobe@lists.linux.dev>; Sat, 15 Apr 2023 03:03:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 16198C433D2
	for <ddprobe@lists.linux.dev>; Sat, 15 Apr 2023 03:03:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681527786;
	bh=c9zEjoGhnR+BUhtqylmSTjx4t3uF2sfXDnNNuL1wpHg=;
	h=To:Subject:From:Date:From;
	b=oKPEMXJYyeBdrV76EgeihQjBk+xouWC8MVyAFzpRpgG3Z7COEYqgGIiGBfI+Ep+Sv
	 xZnQVWSTA8183rZ/Lx+jmkITNdU+x0m9I01woAbLUoL2eKuvyYjIByqOi0+Th3Tz5R
	 ojd7JELtSZHhzDP5t/TOwQm0v5Kwnls4TB8M7ZW+KB2OnpCn2nz47ae3SD4jTw46Eg
	 LwRMLvdzOPvGdQfOVRfJ2T7/6gni5UalIpDsWpV26PNZANksp+P7oupbpFKbh3bz7K
	 mBIP0QGDeQKvrd/FvCoPUYBC+v3la45OM6Ia8dVaZJBfPzlISVwdr7/n7z1pn5JCa6
	 3tDbBVc6fON7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E57D7C77B72
	for <ddprobe@lists.linux.dev>; Sat, 15 Apr 2023 03:03:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168152778587.31134.3707982574653254696.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f53eec4c9caf0acfc5ac34c1081db92cd71883e502fb7edbd45fcedb8621110e
Date: Sat, 15 Apr 2023 03:03:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681527785
