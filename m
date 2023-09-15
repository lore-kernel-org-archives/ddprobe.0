Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E5B63C3C
	for <ddprobe@lists.linux.dev>; Fri, 15 Sep 2023 05:15:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1EA5C433C8
	for <ddprobe@lists.linux.dev>; Fri, 15 Sep 2023 05:15:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1694754908;
	bh=kNQGdwN/IhzwM0lBAMvqyWvw7KZpGfXaHdJ2a+KaJPU=;
	h=To:Subject:From:Date:From;
	b=o5ve5ZsMV1nBJSJzzLOjt7ycecoK++0CGT7dVoKk46mbr/5NcvdQRc9cY4e7+T8wS
	 Yqe0p/8rjYt4VLpHiNJSAaVHARBNhezjBPHQmfiu1QwJalC+3ZoiVSyClXnu/L9OR5
	 sLqf1CSLHzrYvlQIQ8E8gtf/cMaVJU+byAZNzWGDm6VoTAcgSCm/36NSAOSFEUevb/
	 er9klrKim4Bg6R29BLhJwCn2JoXDZHv23vbuv4Cow/C459hK9bXYYocxx2yDPiGgxt
	 946RrWV3BrOfr40cl0wWX8sPTVb/1INsy2OeF36TTqi4fe+w5KflLP7xksBWc0Uik6
	 iBii7yGVUNYYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4966EE3F01
	for <ddprobe@lists.linux.dev>; Fri, 15 Sep 2023 05:15:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169475490873.2693.6569873299156873958.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 10fece9b3e67ddfb631058b37ce52adc13a6d03bdf4c2192c474619ff23f9af8
Date: Fri, 15 Sep 2023 05:15:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1694754908
