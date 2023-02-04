Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34B2333EC
	for <ddprobe@lists.linux.dev>; Sat,  4 Feb 2023 17:06:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0505C433D2
	for <ddprobe@lists.linux.dev>; Sat,  4 Feb 2023 17:06:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675530365;
	bh=gg6z7WViReBp74shQmBBW3NrsGXWLVhP/cK6Z5NeXTs=;
	h=To:Subject:From:Date:From;
	b=ISGYpEwkqrhriU04S+I6og0362+HpARNzHV646dK2EaKDIXCSwg6VvYMhrkYcJFi9
	 lumZ47cCfGwYyL85+cMySygX2neFx/OGP06BEUywo8V2JrXDXT0XqrsdmahQI9tv/0
	 kYq+fl+aK/Esnoaqkk6Su4u9xNfcn+/ZIumZOV0g0e3+vMAfNtXx3wFkkUdqiRA6jg
	 RWaFoxtD3v/igcIy4M3YAzTJCPbGwaOU5N4wi8uTDPrQvkO18FHnMZWbJn0ViN9OYn
	 0Wvx7ngh/HIe1wGATPv5jxH4i0LjgcsNiR6dd/sHPBnC/mAurhhXZ3LMtVQbdbMylW
	 rQI075NOOB6GQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5CBDC636CC
	for <ddprobe@lists.linux.dev>; Sat,  4 Feb 2023 17:06:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167553036573.23973.1898672962653452637.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 645d8beff427bdca1bc2e3db7e06066a57c77627062e57815e7749fc42360e4a
Date: Sat, 04 Feb 2023 17:06:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1675530365
