Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA37828FC
	for <ddprobe@lists.linux.dev>; Wed, 21 Dec 2022 17:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7A72AC433EF
	for <ddprobe@lists.linux.dev>; Wed, 21 Dec 2022 17:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671643287;
	bh=1u4cXo6y1BMl9Ct03IaRv8314LY8pjs/0qntAD3z3P4=;
	h=To:Subject:From:Date:From;
	b=FJwxQJOubiAAJ4RZqQQ/XXan4MwQ3l1OFiTnYsvueHhTvzr4mhqepxhDtQsqlDfPD
	 TKHI7naNIGfxGdR8QiWARhWeNs2k0GKAtKfL9QQgdmKhnXkN2bxZGr7FGUnXSZrhUm
	 SDNBkUTImIr/gN3FE1LhGsXLThoMdU/kH02teJ7mYSOOcdcxOAbvgavz6URp/25FzE
	 1dX502lccnHYqyHfJYzzKx0ZRGAlOfdwQ+BoJWeWoQs/HB9jA0SumTeP5rJrE0F5VL
	 Ds2UEn42mLPZzEmLoj3LfLWSjAqvmuWnRsTc1K0AovQ9FxINcIqNVrQKNV6GNLHBVC
	 97N4FV2GSF/pg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F356C4332F
	for <ddprobe@lists.linux.dev>; Wed, 21 Dec 2022 17:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167164328738.5369.16533130875164470130.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7e48f7cc2260116b9cfc163e3626b076da71e61c84ec717ce6b541619e766801
Date: Wed, 21 Dec 2022 17:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671643287
