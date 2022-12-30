Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D71137E
	for <ddprobe@lists.linux.dev>; Fri, 30 Dec 2022 19:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7FB5FC433EF
	for <ddprobe@lists.linux.dev>; Fri, 30 Dec 2022 19:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672427487;
	bh=drU8OFvLvlbyH2acY+kgs1b1Z7+dpx3h1Op4KD4Duyg=;
	h=To:Subject:From:Date:From;
	b=EG1bTvxzvAYc6KS6IvV/2iEGCtzrYGzPEa8OKTSOF3L3rmp8HrpynI/uDAXZMGwF8
	 UTp/ny73xA4fxnBHbBJotavc/47KhCotkwphbOPEdzM3VicPwmAH9boTtIDkGe+xRw
	 SkAJci0AMY3tYz/M/+tk/VldxJ9Uul0JkoDzdmshCEZ0QPxbejz04fuS84CL2M0cgi
	 c0/RMs4p5USFviY2bcMxHibsqrW+et4/jqnqP8Awt7ctODJs3BUyDIlV1wCo3VeY9D
	 GgVN5TihbFQ3Tkg2oAc8NLKf1THFC61HbaXDA9cvuf0idd1nPDfpixZ+NbWkJEFOG/
	 fz+YNtgbwv2JQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 69D7AC4167B
	for <ddprobe@lists.linux.dev>; Fri, 30 Dec 2022 19:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167242748742.3841.1163337145375721468.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7bace7b598def16db5cbc36a5071c2de7f862d299c054849f4e1a6a0c90d2c75
Date: Fri, 30 Dec 2022 19:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672427487
