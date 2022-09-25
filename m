Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C35E02904
	for <ddprobe@lists.linux.dev>; Sun, 25 Sep 2022 10:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 71D05C433D6
	for <ddprobe@lists.linux.dev>; Sun, 25 Sep 2022 10:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664102453;
	bh=Rd3WJ/wxFXH4N32QVPzkiIQaRcLhMuciVptFNMA99qg=;
	h=To:Subject:From:Date:From;
	b=AzkL+nBLs1hbSIxRUSvqPJ5hADXBCW0woNDFZHrDB7L8bUjEgdm4Ow3YNNppBRMIw
	 9pK6qOEojKqPSS1t8SB5WkUaCRVjXdpS1u4wCk2Z3rHh2fnbwTRcroGg6kZNmHhVox
	 yV+Xb+vJw//e1ErOYU9h48Z/TI041r+P/w4wVq77PUU0WRJWFX918thk38imftvBdS
	 mc55/nLWF8FzcLD8JbzuVqje7stsO186Lqpd2I3WYIsKv8YnDuruWAD2nnCQNl1uCX
	 oDmLrVRYNPLZcoQCDI0PXbCu6z8BSLF0tXSSPuIltMV1FzX8VttRMmlaCdRI5Q0OnB
	 td0/GuwtFpacw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56429C04A95
	for <ddprobe@lists.linux.dev>; Sun, 25 Sep 2022 10:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166410245333.31747.12369076154474837291.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 003ce173bada30024805f580362d3f987688be5ed600c1641c87f55117ac18c3
Date: Sun, 25 Sep 2022 10:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664102453
