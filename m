Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C88B37B97
	for <ddprobe@lists.linux.dev>; Tue,  6 Jun 2023 15:52:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D242FC433EF
	for <ddprobe@lists.linux.dev>; Tue,  6 Jun 2023 15:52:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686066725;
	bh=5ugTgtZ+uFFuw/s+zDN1N5eVxiWCmtflD65KjbtnFNo=;
	h=To:Subject:From:Date:From;
	b=nSaKRu39ROE2lshZGEODdBq6TgfntbTdKzgIIibvNJg2lOmbvX77VhtuFp1CVHfKv
	 R84ojPlZOEIjS90d4RzVplt7sO3B8/ElF57KgNaKxF+nGHfP3ay+h/9NdrGeBW6Yxr
	 vaiqOYr3WGrd6nvTwvTS/HSiU6GFEbsV8i+k5F7Lkl4nzCTee+KaY12RKXURwNIyAw
	 Ry+J7vc+dd/RuaAFszConcHjDtT8fXVrhDbSragoqVWeMzKlXhctGLCxmnUSI9Oxt9
	 UkIIA0hbT5V+UmkO/D4NgZ+aa2eC1W9HhZYHTE7BAZUsZM8IKsUbYJdktK1Ic98o3c
	 nZuNDAP147sPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B95EEC7EE24
	for <ddprobe@lists.linux.dev>; Tue,  6 Jun 2023 15:52:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168606672575.12216.16149934901833184173.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 269798f9912bc08f455e38c412c9844a922d2244b4c9c746db4c2a125d0382e3
Date: Tue, 06 Jun 2023 15:52:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686066725
