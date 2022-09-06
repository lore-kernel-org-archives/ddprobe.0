Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BCA4117F5
	for <ddprobe@lists.linux.dev>; Tue,  6 Sep 2022 18:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6B703C433D6
	for <ddprobe@lists.linux.dev>; Tue,  6 Sep 2022 18:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662489653;
	bh=DiS0J5K/VSfNSTheaEp1YAP8bTKg4vup7QPCstWbIco=;
	h=To:Subject:From:Date:From;
	b=QxWUPCEkuNWn3INWe+Pxi67RFlba/M9mKky8QMKWSwqPLOnc95mE9Ppt03nXJW7DF
	 q/AITcAunkMPF1xRkn6ia5vM/1RKoCC4Kn7bwOIETE4NKYmhW5eseSIBjSOEBo/JDE
	 lwyiw/VHKzeYI2dV4GHJBDaupeoHRJWkxbZ8m0HUdqZQZdWoTVklh4E8HNntn9Rpo4
	 NsLsO5mXrsnVY3MA98mGwQACKapEV3C2pQVzLxBje1eBZ/WQxVJwavfLuIK35aHgGb
	 ovkoyFNNjwFkUg98kLuSTDJ/bTrAxg14N+ZTssjnfMG7WiuunrvUUsd5kDO77qZUHT
	 IRF9Usp+CN44Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 554BCECAAD5
	for <ddprobe@lists.linux.dev>; Tue,  6 Sep 2022 18:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166248965334.11119.18368051345794958291.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6c9b43c8780cc257de03f9b3949a257676498917ee4ec2b2ad500bddcfb85e00
Date: Tue, 06 Sep 2022 18:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662489653
