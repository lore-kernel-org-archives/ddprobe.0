Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DB97CD53F
	for <ddprobe@lists.linux.dev>; Tue, 17 Jan 2023 19:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7E3E7C433EF
	for <ddprobe@lists.linux.dev>; Tue, 17 Jan 2023 19:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673985087;
	bh=OM1yfcwIgAzXoaPR6Z/SDxRYZ7MUXXHc+4G0Y1rRPec=;
	h=To:Subject:From:Date:From;
	b=pKdSydl6yy5JOQUmX4ErqueUevYJz2OPEbffoAb0Qb7WiplTVob8VtUQifaGd/8+Z
	 FdVE8tZM7kU1STSIllAzANj4SFTfqryXlvFg75wEKB/Hah88BqvZFjyr0TilWbWQSn
	 bgUxSxCWSgwMJJxePHYj1KspPb6j0ngwRl9US8flNRLY05jxiNkLvbqoX/TVp+Pds2
	 2jKbtxtOKPl7FytmpMNHK3108473yQpVM2Cvo+obj5Z9LSlrKmbwkrkO1QWJES+88n
	 3Ky7FztiU24DqHghVl1cBUgO//2xMR7uZ+4yRPKSu1cGWi1R24BEMD4Twwj7jcRa6S
	 eKqfQii4gS8fw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62651C3DA78
	for <ddprobe@lists.linux.dev>; Tue, 17 Jan 2023 19:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167398508739.22666.14152212260092471057.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7362f470c9a448c3b41e65844e474f352f369dc282997b0634ad61f0bff5bffb
Date: Tue, 17 Jan 2023 19:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673985087
