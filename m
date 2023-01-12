Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF45E361
	for <ddprobe@lists.linux.dev>; Thu, 12 Jan 2023 02:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7DC31C433EF
	for <ddprobe@lists.linux.dev>; Thu, 12 Jan 2023 02:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673489487;
	bh=FcT0MmQ8hpXVfO5IghSh5m8t+zTYhvDppG04VNt3W7s=;
	h=To:Subject:From:Date:From;
	b=sW2nxTG/zn2N1B1qzWeJQjPwMiXqxnKjECKwbp19PzNR73NpscYVdCsADJ4mFIGhe
	 OxHbzelILmOV80VBTpy/B7sndv0feFbaq/m01huDZmJrm7q3V6kpVG0SKgniAzcMtk
	 hYEbx01mw8Iqz+O0Z/2vDXFct+sBAsRKO2S9i8DCFSm52FN1eqlgloDsjSRIO7HtmZ
	 5c6MjSj+cmi1rBoK6p8Lcr/hoQzK+sV2A+q05lGI9OKSQtgTsGQQ/a+zrByXPeDlum
	 kxC3gjzeNSsd+DW283NF7u2inppbuS9aszKM4w6xOX89UJNbhFewi0FlvAZrOEHRqc
	 x8xVa1750OBtg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 65CDCC5479D
	for <ddprobe@lists.linux.dev>; Thu, 12 Jan 2023 02:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167348948741.6143.17679871292801700948.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 157d227eaacd99b403cff6533d291869cdaf69d0bfc8b8e8f23b0845c892a4a5
Date: Thu, 12 Jan 2023 02:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673489487
