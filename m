Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A4D310EA
	for <ddprobe@lists.linux.dev>; Sat,  5 Aug 2023 22:53:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4A43C433C7
	for <ddprobe@lists.linux.dev>; Sat,  5 Aug 2023 22:53:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691275988;
	bh=GZzUqBab8zsTqvGZGshNlYA8cTGtd9wo5fc9cZ2P5Tw=;
	h=To:Subject:From:Date:From;
	b=ZZLn608sUeVxfgwWakdtYfPMTae3COACFIE95s5JLuC9i65DlBhhC0T+UuCRta6L1
	 vqZjj2+9M/OZ9xMTihWOEU4KhGPS61GSmojU3+LxEgl7T4GnXRjcwyRSC8Ax051yMV
	 Yvb08zhbD2hfNl5wStDZk6eg2AcUb+Z4jMS8hrXfiHrRMGhg1FNjyoRLN7eV7i4UX+
	 svwaICs3GCiOAJaW71rJGhCkZXnHIgoo7JjNxHN/wwUUtasDW+IJwU9NROdsDLz6b2
	 zpGuQy11XLSichr8YBTT1yLT7icc4G7Ri6txesa28XZJ0rJXZX0+Iyh762Pt4UgGFY
	 Fh0sijNdtAe0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A63F2C001DB
	for <ddprobe@lists.linux.dev>; Sat,  5 Aug 2023 22:53:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169127598867.28581.15778420522577367086.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9f1eead456aee9a19245d92f009635d0874b32969ab7a423b4d4ae7e394268b3
Date: Sat, 05 Aug 2023 22:53:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691275988
