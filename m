Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0191F1FA0
	for <ddprobe@lists.linux.dev>; Fri, 30 Dec 2022 05:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 91060C433EF
	for <ddprobe@lists.linux.dev>; Fri, 30 Dec 2022 05:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672379487;
	bh=hWE/8I7xgVrszeEF1DKe2/ir9EBwvoj/LH0rLRvwdTw=;
	h=To:Subject:From:Date:From;
	b=NBrruOZhlM2NN4lKNw4nVpRzSqbAzGjRR+fcjBbobQpXG5UdT3Mgx9OLjwRquUb4I
	 eeW5P78DAtmcosNB4av8D6DtbfwhM1x8iHecWYc95EZ8Ld79iTXr2rnwPVhAX40fvw
	 TzHSH23anfJDzFAld4DUh9zZdGYMj92F4sLJTisVooUkgrTdlX6y86bg7JZADB2ZCK
	 +N2R9sTrD3ZVTV3SQ4uqyQKYaEiVp3TCJfwAMV/mLRRPlZLs6qn9eISVqloH6XqAok
	 6pD1yCaUtNzeUsLG0wkxyx7AgIfcFIbcDZqnsmhBYyF4PomPGTFD5PSYRKSHXm3p+x
	 Y/YprJuxcxuUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7421DC4332F
	for <ddprobe@lists.linux.dev>; Fri, 30 Dec 2022 05:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167237948746.14794.6502832179840861225.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5c9badb582c6194514e6e4331211949b2818f71a86ce184eeafec5447858ae79
Date: Fri, 30 Dec 2022 05:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672379487
