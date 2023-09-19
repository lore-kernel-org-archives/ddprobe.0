Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 626EF374E7
	for <ddprobe@lists.linux.dev>; Tue, 19 Sep 2023 13:55:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC914C433C8
	for <ddprobe@lists.linux.dev>; Tue, 19 Sep 2023 13:55:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695131708;
	bh=4qebu8vWUENwLmQ9a8MqEZF4ztPdImY5r2gxyJUmYvw=;
	h=To:Subject:From:Date:From;
	b=oxZzed1ZbC/xifrr7j0CIEY0Gp787Rq68Stb4y13CX0lrFcUluP9OqE4Lkw/xTdz2
	 mJv+htW+0oyOLiTUN9kbDpybau7JkTjVJUdN5Gtl3xbQfbkZdrLSAFOMXz6ouQP+U2
	 FWV72tKy495Pjd+wflUkQ8au7LjxZbapkRUBYcI9HQ/7aEmI0aArgySRqQlAH6a/Y4
	 GAbMMaNDFrgeUWlPMf7GHQ+b7HcOQTrcY4gDnTs7gMPJ1/SvEkJiMEjdODN/FzPsvM
	 WlQm5KNhgvWYfUMfUq+EeLUWy2GmCb5tNVSJzaegZGPGbYQFz8Oud7V/AGm9ajS0eC
	 6A4VIPD4deOqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEEDACD5BBD
	for <ddprobe@lists.linux.dev>; Tue, 19 Sep 2023 13:55:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169513170870.22161.13918636097299537545.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 413057c8356687ccccbbcb9dd6013e107da287e9f0b9450a58b9aafb1f9c0fdc
Date: Tue, 19 Sep 2023 13:55:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1695131708
