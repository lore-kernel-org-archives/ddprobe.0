Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B9AD32582
	for <ddprobe@lists.linux.dev>; Wed,  2 Nov 2022 14:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6D3B1C433C1
	for <ddprobe@lists.linux.dev>; Wed,  2 Nov 2022 14:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667397654;
	bh=Y2rp8ai2lTuO+3E2I3XYbCzPArysDb8iVu1jCwijkOA=;
	h=To:Subject:From:Date:From;
	b=Shjb9kf0v7U1F74zknjlSm8NuCkUZzr6wX7XLCd0nPwLzGaw2SvYq9csMzNlO/5LU
	 Y6u6C5bwKUat9seN3wEFyUSwYmEci0Y19TtTL+uRfJILD058B/MHYoRhholSn72hbp
	 kkr7zKEOEClu45BOM1lfo/Uf7shnqS/9nDZNFHuF597cxEHzd4XQYDC0AuuoC0xUUY
	 T5OS+pa540CDtlPu7NYDbcNLvc0XGQ9WgdFRO5JhQvhRu1uLteDmo4NIPlexB5n9Fb
	 d2jSwb4AhV7i08jR4Kk+j0zkEwQVzDsaQZGrtoLEFOft7Ogrz2ADSzn2k6K0dSUjJ/
	 ESZtqptK0fJaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55AB5C433FE
	for <ddprobe@lists.linux.dev>; Wed,  2 Nov 2022 14:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166739765433.17449.12603562795273293539.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fd3a29c5bbc6d0cdf35c97a7456350d2779a816470addea08399e90fba44eef8
Date: Wed, 02 Nov 2022 14:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667397654
