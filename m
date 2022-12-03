Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EEDDA1FA3
	for <ddprobe@lists.linux.dev>; Sat,  3 Dec 2022 03:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7968AC433D6
	for <ddprobe@lists.linux.dev>; Sat,  3 Dec 2022 03:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670037054;
	bh=HcMYonDfJ5hmXnZ6lBm62LxP3iC35OjUFX1GJ/R3cfo=;
	h=To:Subject:From:Date:From;
	b=L74gZIPbycJ4RWQRibk9bjVeQwaWdAzIJS4pc8Grdipky8UazL+qAR6e9yT8EKQwL
	 N3f4f5vAQ93M4CmPrmevnDEFVwmn39JyPwrQ3cfmIMoH/PDmCa355CyWd1w0TTA2MO
	 OxS5tLpx+zKGbbbBYfufpFAiFuESSVYgzkXN/763qGxhg3xAt41g7sIYLH/lTQrOOL
	 v491SAA2TIZu6SLV1ZqA300WZ2Lnp169lRojdtUbFImlutT1PQ/RIZNcbc4nOIYfpP
	 8oL6NepAc9B8dYO0zpAJQ109YjOms2Qj+2B7AH9CzI8+D+coqwqDHsE45FIi8zySP0
	 YSk3qhcAfUL7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 572A8C4321E
	for <ddprobe@lists.linux.dev>; Sat,  3 Dec 2022 03:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167003705433.22714.11677836483932850468.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 47afeac0af4249cdd5430d6a42bb91a882ee4116535245df8f35405928aa30ba
Date: Sat, 03 Dec 2022 03:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670037054
