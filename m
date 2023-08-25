Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5627B377
	for <ddprobe@lists.linux.dev>; Fri, 25 Aug 2023 07:14:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDE80C433C8
	for <ddprobe@lists.linux.dev>; Fri, 25 Aug 2023 07:14:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692947648;
	bh=2MeUmipavtVi/bjUzAmGpUV6MzyV0zIoQHcwUvKSfcw=;
	h=To:Subject:From:Date:From;
	b=b9BmMocb3YggSSJhvYKTq2sttIsdDVklmGgFs2FCkOeG8ZnT5Yx2sWOfzwT/s44pJ
	 zlLgGUMSp7VitnPDggwlYX2b5/40Qfq3XAyvG4d0f+o4zHz8QIsEUD0ltbNfrV1UGQ
	 PL+qZRCt8GXA+4Ha5zDp2GOysuQbLAwhV/T/gZoQo8Jr3nM9t9D7pjZcS4+6J5H7AO
	 GpeNUKXerBOuBJArwn3uLQ04MYrZatCS8Cg6DMR5ugRNHRyAXJIPn5TWXRzs6GcCtx
	 lFaOEGmdi2tEoRZOPCOA0Y6dG2gG1F8suHn+D2EcFP+sta9RqNEFDscrsiD9M48LLA
	 nOFUtkG1hPlIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5331C3DA66
	for <ddprobe@lists.linux.dev>; Fri, 25 Aug 2023 07:14:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169294764866.28237.492900284350674004.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d00ac6b30a76349ce2622d78a38870782e37fae604e184874b1bfe16a93fd82b
Date: Fri, 25 Aug 2023 07:14:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692947648
