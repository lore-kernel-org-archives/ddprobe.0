Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 69BC415B6
	for <ddprobe@lists.linux.dev>; Fri,  8 Sep 2023 06:54:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB4A4C433C7
	for <ddprobe@lists.linux.dev>; Fri,  8 Sep 2023 06:54:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1694156048;
	bh=ODEDgUP9COfv930eP5izDC1BovZ5Yi9Cq4Fr5uCZnWw=;
	h=To:Subject:From:Date:From;
	b=T3DWZeh+q/eCYhKQ0j1pOsu03Tv5U9iFkGLShNgyfWVZhHdLgoRj7nOtOvvsiiYY7
	 +F3wzqqZsMJPKIqmBJBokscKEtrmAbN9uPabHsjBrn6SaXJ7oyeCinhAINb7okw7oc
	 6AkJwqoTz8okPOGicpby9pP8dML4wvGxSmArDVsDmlKTF9T+ZUb/LK218XQYrMaZXK
	 7faDt0q5lVCsHaB7iDrNzyFI7NgYypxFY6jIjsInu8i+v1tGfKh6Rd4bzB0jrO0wsV
	 zonXzEtkseWHy1hiATYvzMeHRt5UHjO2vPE+pngknBRbOCBtjwBp8pvoUXaL9htqHw
	 DqTCAZ1vx6UKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABB20EE57CA
	for <ddprobe@lists.linux.dev>; Fri,  8 Sep 2023 06:54:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169415604868.4883.9202555728393440412.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b695fdd664b13e080c96753f9de8888c2a8316e092e024fed1a16fb4b56feedb
Date: Fri, 08 Sep 2023 06:54:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1694156048
