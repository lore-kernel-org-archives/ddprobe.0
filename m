Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA3C225742
	for <ddprobe@lists.linux.dev>; Fri,  1 Dec 2023 18:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oYyeMwez"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 77AF6C433C8
	for <ddprobe@lists.linux.dev>; Fri,  1 Dec 2023 18:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701454096;
	bh=QBwbsgJm5tJAiRI7ljG/DkLgfjeUgEiSK6Q1WOmSQQ4=;
	h=To:Subject:From:Date:From;
	b=oYyeMwezhwDxXbNSgeu4g6GHtipMdazACKWVQ77OZ3Q2CIO2p41tyq4zptXEcbB+S
	 l6rau5XEdy+4Ji3PdJB9/5Md9l7zpBow3Fc3LHcUKuWIuMYQ1rUQUPYgdyFu/JFaN3
	 s+Gt3tQqNBY27SGRrQ8NKoHAbZJL3nQ7UJGjPlY5ypQRj23P2Tf5N0t8BTgWNdz3kE
	 tgI6nkMTHiyUXnGCFXEQ3MKAh78J4uhm5P6t8RtGvkug+Iy60AeKuU57W6C+nnF/cq
	 u81l5lGtZj4V0zl998W1VeiqEC5JRvm3icZ7MB5gdcix1bL0pNT1BBo2K3bCxDhVaE
	 FIhFOyQpQQoYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F405C4167B
	for <ddprobe@lists.linux.dev>; Fri,  1 Dec 2023 18:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170145409638.24348.2527406953033513421.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 54d53c7c16040b9736cdf7348a9a7e369f66e7a2be2318dd269eeab63ab383cd
Date: Fri, 01 Dec 2023 18:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1701454096
