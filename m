Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 75DD91095C
	for <ddprobe@lists.linux.dev>; Wed, 14 Jun 2023 16:27:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDA6BC433C0
	for <ddprobe@lists.linux.dev>; Wed, 14 Jun 2023 16:27:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686760028;
	bh=OhJ1po8gD+7XiY5EVkIaiu92fiqB2cZ7ZQIPvm7k4jw=;
	h=To:Subject:From:Date:From;
	b=rdrRqA+rs60AYe2M7J9tkx41VELxBDbnCRM1880chkzKIHHiHVlBsrvaTazXEJtfM
	 cbYvj8fhTksZIWmE7X0BNt0L0aqxiq55wsQBI/Y48savEw8j/Ng+HCsnxNaf2qzbQB
	 6dQOcxvJRUkJT/xBbsfk65ltITBymQElRZ4lGtYRd/D8k9sE0iROpBLXnyC1sQclds
	 qO8vaURsgYUtYt8SFSp/w1sDnoN1oVy/EURuoe1zfSfaX2/iREiXP3yAhKH0n4F9lO
	 aUfX2hEB2gEU8VbQVHgSbnnfiyk6hx75+b/CqgThEMkBeW9mbGqQD/KfaPDGCEVTI8
	 xRbTHV/Uq5Omg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0E80EB64D8
	for <ddprobe@lists.linux.dev>; Wed, 14 Jun 2023 16:27:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168676002870.20628.6416341848902308851.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f6994ad1ab0655809d513921e65b6facf550371838454127c7cb1bb730293b61
Date: Wed, 14 Jun 2023 16:27:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686760028
