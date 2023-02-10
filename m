Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36F956D1B
	for <ddprobe@lists.linux.dev>; Fri, 10 Feb 2023 18:44:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D71A6C433EF
	for <ddprobe@lists.linux.dev>; Fri, 10 Feb 2023 18:44:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676054645;
	bh=B0RpOFzl0RfnYoXZa5cHTEBr0oqun6WExWIcag79+88=;
	h=To:Subject:From:Date:From;
	b=cy9flGm22OVYEwJlN/V/t7EIOFa7xXcd7Q5JONmDSPwgSGRsrZQkGG1g122HPlM6o
	 hHSkRYS/tDOZhUnhkIRKXcRYKCyQ6CN7MMykAkU/BH/7FbrpdFuBnAGm9+48eXhsa6
	 XZ/KTk/3epZcftrXGq+kXPPb/5KsuEi78G3E1/LLC30ffbfkWnohkzgSS+ldu1tQd6
	 yCHfyQiB9utzO6H/tHSKJ0R6U3FiTlOgFCtC8A3Ds56e8q1g0pqMIUVFKXr+Zg236D
	 xIp5kLyISkiDEqizI5l77GoVi/9cu4NJ306BkDMg/eZLHS8uZjStNZpGQqBB9TWj2j
	 lnFUtXhSatUcQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B91B7C636D4
	for <ddprobe@lists.linux.dev>; Fri, 10 Feb 2023 18:44:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167605464575.31046.9334570716076349380.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 45da11c1fb29ffde7710799c1b2a62606e99b145e00ef0d8204b30c31e45632b
Date: Fri, 10 Feb 2023 18:44:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1676054645
