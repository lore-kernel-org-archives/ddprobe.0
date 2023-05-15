Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42D281FCE
	for <ddprobe@lists.linux.dev>; Mon, 15 May 2023 06:39:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2092C433D2
	for <ddprobe@lists.linux.dev>; Mon, 15 May 2023 06:39:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684132745;
	bh=0RRfIO8BJVVIcSbhiHDh+hYAjy+u4GomnVd0OORgsMQ=;
	h=To:Subject:From:Date:From;
	b=l0d+R8jgN6CibKNFDa6QH9SI0qeM9bynU5CSBwHRtPjbxHhSwSx/cURR89xtbJZqA
	 MfJXqFcVpZ5TNkljCdAagS/ytHxGHiWcwPH0Q39LJoVeAOPAv9/Lq8ZwmcehDKCa5/
	 zFjvE167tJJJ9ETKzBVaO3333QGAO/MRSdQkk44TeYnz7IlVOE/IZJFE7OKHxdjWK1
	 GhkziDpQ/dsvyhWSsWX+Wjv3xwfyPqPpcOB7R7us2Q5SpV0XrD8+TbjWJMTWC+gCds
	 tEzFo72jkBZIQz8gXq3Zz4PY3zTJ7r8ise9c5kd4bnUzvSSoJJjNQECIou2EIcMGTC
	 ckF8zmYgXUS6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3531C77B7D
	for <ddprobe@lists.linux.dev>; Mon, 15 May 2023 06:39:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168413274572.20122.11299305474035038344.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2df14bc6677201004892cfddc68607336b11c9d8df70ae03e3461e7a8dab53d8
Date: Mon, 15 May 2023 06:39:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1684132745
