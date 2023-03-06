Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 333647473
	for <ddprobe@lists.linux.dev>; Mon,  6 Mar 2023 20:57:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2577C433EF
	for <ddprobe@lists.linux.dev>; Mon,  6 Mar 2023 20:57:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678136225;
	bh=mZREuqXT8hBgLLSYiN3Fw1DCwWBGRnybrqknlgPooIw=;
	h=To:Subject:From:Date:From;
	b=RbebuoYIHjKG+snAqnAJ4jELQqWH/M5HcKPrBc8/QLwOBQrnLmC0XbJCuQ89ic+cg
	 YT5YLcp3Pk0GyLPyUqtW/glL4YauZV8WtUgEft8pES/VIAWfDaNMT1j7oRGZeeRmOA
	 rTolA5gjEpAn8cQNyfJwggT4ErHLClZEZA6HIDs4EiOaPapCNAGJB/EtUGezZTRet/
	 aHVfnK22QpY1NsB+9LhL7sTj6NpxmGtCMnsTrja5UFh+8ex+4dO5jQWFS56saVBWRi
	 n3YQlYt1loac9zoFmpVRTqIrjd2qOL127Q5QQ3Z5nHtOi5Ql4jSYy+1IOuf1DatxRs
	 AYpaNdYOofpiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BBE00C64EC4
	for <ddprobe@lists.linux.dev>; Mon,  6 Mar 2023 20:57:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167813622575.5563.11331567620413009105.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 257ec49e6c5b8b27f3cc201e743c8f385e6ad065822da3abfae5a219ed5b452c
Date: Mon, 06 Mar 2023 20:57:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678136225
