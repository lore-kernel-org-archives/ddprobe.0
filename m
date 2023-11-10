Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19E723C697
	for <ddprobe@lists.linux.dev>; Fri, 10 Nov 2023 22:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pIrp2JaN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 87129C433C7
	for <ddprobe@lists.linux.dev>; Fri, 10 Nov 2023 22:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699654096;
	bh=4jAWpITA/Tdk0a9c2KCz0MuIBkbIYGTIpDPR0x00tbA=;
	h=To:Subject:From:Date:From;
	b=pIrp2JaNwAIYwr7p/XY/HtpTr0KdrChQmjgzx1tWxYcjttZS61QFR9jv24J+OlYYy
	 TfISaFVpCNafoJlGOsKGNXuepkJAhozHTzzhcSUC668gsONuIjSrSuox2aZj7fEqUD
	 pq58+sYEl3NoeZsbruEIVg7ctWsa95ZpaR5rdaQlFeMp1FuhPOHBjkxR0rfR/MpSZ4
	 Koj/7dm7nEERsq4aSqvwgFZfsTXhJV9fPSVXZDJbznvGa/uoUtmhV6C1tG6J/fTfjG
	 Y819v5PqzMRwk7Zq/ULbxFQfPHFT2+pmAY2ToBfvlW1Dct3XSmnCsRs6QmZf02OMKP
	 3OFhxtEpETdNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 66275C4332F
	for <ddprobe@lists.linux.dev>; Fri, 10 Nov 2023 22:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169965409639.8984.1315948472372681868.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 143e3bd54d431236332509bfd173ab43432c23638906f290c1c6c1a04ea91d20
Date: Fri, 10 Nov 2023 22:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699654096
