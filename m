Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E60F65CBC
	for <ddprobe@lists.linux.dev>; Fri, 27 Oct 2023 12:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AoPXasjW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7E094C433C9
	for <ddprobe@lists.linux.dev>; Fri, 27 Oct 2023 12:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698411496;
	bh=3j2RV1G/p3IgZGK9TGmBuj9qfv4PYtAglnWkRvvj3AE=;
	h=To:Subject:From:Date:From;
	b=AoPXasjWJQ30TvCm4P7scB72Df556BpeFfm/f3SX7M06F5pn5JDA1zaj+aiWKiZNM
	 Yo23BQfO1A7tu7tdSDgilonbvz3XVH7YRgKUJW1FJs1vTW6ToRWOD71kS0g1olOY72
	 1kBcRGq17WxC5NCiDZzxpK6miRFmrbNOde/Ske+gJqQOxFIBi2Pt0mvmoGNQLM0YBh
	 kPHlAx24UNMRXqbi0x0V8XthIDhmmjR2U8VPVQI9YQycy1AxThWZx9/6WZi1yW1Qwc
	 I8o3XRA57XP/PV5GWmbLj/9bbQCOsQK6bUc9yevrtE7c9gqqzC5e2z91qD4NIJt7zy
	 /OnwRAZsuQh4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 613BDC25B47
	for <ddprobe@lists.linux.dev>; Fri, 27 Oct 2023 12:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169841149638.23159.17096665485723802284.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0f5cf7904eb13f33785d343fbf7df61920f6266de779cf02958773cde66c3edc
Date: Fri, 27 Oct 2023 12:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1698411496
