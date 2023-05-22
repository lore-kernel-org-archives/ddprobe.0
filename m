Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4151F320B
	for <ddprobe@lists.linux.dev>; Mon, 22 May 2023 22:33:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DEFC7C433EF
	for <ddprobe@lists.linux.dev>; Mon, 22 May 2023 22:33:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684794785;
	bh=2picu6okKJzzkgX/B0OXLncG8necM1Ky7ed5NxMKjGQ=;
	h=To:Subject:From:Date:From;
	b=szKShs1y7ew5drRNjxncFtUCtQJn8yK4mDN1NT3JuQtFAfMO36ZLldphhE+DXTqjC
	 puG+4xjHOb3ZFYedgWA5Grl5oO0jNo2MUQOln+3UtDfY28XyOwU1vBZxULzbzWb4ty
	 G+2qJAR8uVYqAp9GQM+EPSej6nvUXPnBIU9vgUDIn45Frb6P11n/eZAcUCvw7JtolR
	 AdhT1Al8HHMJF2MVhM0qRky7/bmXEOAktXyQzj9BvXJ3XOruATdQKhMHoWe7FcW6Wp
	 0px4Uq7VhvcPpKdKTEwcSUrd1NUuEifbOlB+MJO8xjdxr57lAv7TaLhDTyVhX66nQ6
	 Dldz/slame7Mw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3031C7EE29
	for <ddprobe@lists.linux.dev>; Mon, 22 May 2023 22:33:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168479478578.13588.8620851359446163541.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 50138bed4c43bee05c0339d2e5703631e5eb298bfe31b64af2e01a8839f7efc5
Date: Mon, 22 May 2023 22:33:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1684794785
