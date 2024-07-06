Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6BB7817722
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 09:05:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720256723; cv=none; b=OEHWHP/Ns8RgYT9DOOXtdQNoDzv0IJdQEdWecEd2u9DcPJrm6N83/ZOm4spmxMpuFqN0ewMEgGEsrGyxoyK6WmBEOwvQ3Dv6m+dHErJdVwn/szumBdgFKbKcXNlP9HeTouGNWB3lBfz/bBobZhmi34lWFmzTfzBoxrUdVACONKk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720256723; c=relaxed/simple;
	bh=HzbY3q0LnbGm7LyP+zrAAzkdifg+Cbqx1upPuVo1TIw=;
	h=To:Subject:From:Message-Id:Date; b=pALb8quKbZByDMT4NrSQdC0U9DmNW5z3uS5lrRayuOB55m8T1wh5TaJ+PaKi0xk9wWBtp2dYvda9S9OJJ8EHQLicRd2AMF1a2X/GZD4dSWEjwvahSI5UXKMyX5CIkvqwBuQS34DJYaDcPjDYvaorQf312+u+hVw+Hku4nkC5KuQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A1EkpH8n; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A1EkpH8n"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E4966C2BD10
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 09:05:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720256722;
	bh=HzbY3q0LnbGm7LyP+zrAAzkdifg+Cbqx1upPuVo1TIw=;
	h=To:Subject:From:Date:From;
	b=A1EkpH8nKMXIwcc9tFLgUjDt5yMJADx9GhRbFeFmgZ/4DZZzrfEkBFp6CkMN/EwX2
	 GVJGq7Ez4JP0uuAsa/2cTq/oDkiSwxbNGan1AkDt2PlWKAE8NkRi1xcTw7Ggcat2TL
	 PphR3zFhqOsXbcgBkr6fnVW9Yi1i9YoMIEU69YvSMqGU8zBVcJQxrH2lAzvEjeeNdX
	 d8covgKnYDH5btvZiBoPy4XB+9RDzGhSOfmR0ky/WBE1HpHvsyg/z3F4tDKBZuNAya
	 f2uv9kS3LEA8HfSA3/hfI4vQeZKJrnTP8vGdirNI08fxrBnrh+ffHO1JdM8jwcetOa
	 hFjp8qlGF0RxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CF886C2BD09
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 09:05:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172025672281.31243.16465958390442507685.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f15497400a3921f329fda42ce65ce459d5cc285ee25e384b973e545581a83e24
Date: Sat, 06 Jul 2024 09:05:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720256722
