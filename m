Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 154C31FC2
	for <ddprobe@lists.linux.dev>; Tue, 17 Jan 2023 10:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3C9FC433D2
	for <ddprobe@lists.linux.dev>; Tue, 17 Jan 2023 10:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673949687;
	bh=8ii7vyHfcNq0hg5PBU6yFOVJ0o6pswmj8kXX1uk1ilI=;
	h=To:Subject:From:Date:From;
	b=c/wcEES+U6vQddtKt5OFgEaPwtCCTppNP3TuiEnsRlLd+uliMaDt+/Mg6e54Iw0of
	 SpZeKLyxZygNynD+2t+o4RKUQcXBEkDBAUDRBhoIzEukbGYEuR4shoLzqxR4gjFOua
	 2h/CJTAshCsgmtFbBsY5RnHbobo8jvVPBHNeA8+IwpVJELebYn4aLuTloi3BOo2+iI
	 Dg0H7i1pGc7sNGDyfFIQgJWrDmFyF49Vf3NzhrDLDqHzXy6AhuxTk/Eca4DMOHdDF2
	 tq+6qRqjfFZqpS5xVnaahfvPIjDyzYBixOd7h5zHsqvffjENeKaphhMTFw0BXOgOrH
	 OBXvg+dpCh0Nw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 80C50C67871
	for <ddprobe@lists.linux.dev>; Tue, 17 Jan 2023 10:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167394968751.5023.11001367856600390864.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6df2d15bec1f2de818b19e67c1d588048519013fd7cfec42bce09b367614db69
Date: Tue, 17 Jan 2023 10:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673949687
