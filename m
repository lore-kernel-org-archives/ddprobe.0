Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AE02A366
	for <ddprobe@lists.linux.dev>; Tue, 30 Aug 2022 07:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6C114C433D7
	for <ddprobe@lists.linux.dev>; Tue, 30 Aug 2022 07:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661844653;
	bh=vvESR3oy21+gM1wcutAGw0D3cJFclYkARAZIa8zw+Eo=;
	h=To:Subject:From:Date:From;
	b=V2AqpDd6yIK5fIRbx4hic33ekpuiO3EpDZtBf9fw1oayoOvAtUHDIbgfbbbeV32j+
	 2xA9iR3cobQXk33J9Ut7MUGeRSSPgtVgjFLcTPOdUc+c3y8Ay9KEcFFUPy7HSDBMkC
	 Nm9E+7eJp3BL42MA0G002xuizk9ZAK4jtHeHsiWyra/y0rKhaIUobV+fC7nGZYVbtb
	 4G5f/LUk1obbRPl1/stZo/D75afCHDWy4F7BgL0MuTCqMkGdRgajidT9Ah8Qcnzyzk
	 3vzVK83PvI8flk7/xfxJoUAanM64LK6kn7PosvP7blPwNnG5oX/YCWdkBV3xYoT1mp
	 vY2dKYSOhSRmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54770ECAAA1
	for <ddprobe@lists.linux.dev>; Tue, 30 Aug 2022 07:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166184465333.32323.14233204403050245026.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 47b28127ea2586351cb2444c75a2d19ddbc96f16e7f2fbc7052d8a1861df62d1
Date: Tue, 30 Aug 2022 07:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661844653
