Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B92A84C89
	for <ddprobe@lists.linux.dev>; Fri,  2 Dec 2022 17:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6D308C433C1
	for <ddprobe@lists.linux.dev>; Fri,  2 Dec 2022 17:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670000454;
	bh=WWWZG/tuSRPCT6QSEY+2g4xglTZdN/iwoHM6yq0ggEU=;
	h=To:Subject:From:Date:From;
	b=WUhMVPvoRbYSSz19zQJ5jZPj5HF67iLWspODkkuQrn0EQ9+BTvRuZYPLuW5EWxx9I
	 cGIuh6unpM3LsNK4vPj3i4b6NJqPYq/KWWSneLXgFzeliAkJq9s0CCoF2zqQxkBnuH
	 47Qy6hTEsB05kRJ5Ndf7NiLbSXANVNQM5mSQFPiq0OgskQL7Q326lsKqQkIevYZ6AA
	 9hirlONkHyXzX3zdhNbAHQWE2NdsJszgcvF8MDiXgtmv5o1phIg1+8e3tZZANlcRu2
	 dZrqM03kR1+hNFhRXg+Ag6dBtBV38JoKp6p2wL/61/DMsmwKl/OPhjX1Qe81N0PXFI
	 lc0XP15Hh+T5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56F41C4321E
	for <ddprobe@lists.linux.dev>; Fri,  2 Dec 2022 17:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167000045434.15016.12861606097668949079.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 847d72529490b8dd42284c794a1e12caed745e9ed8b42c13ad30e50d091db337
Date: Fri, 02 Dec 2022 17:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670000454
