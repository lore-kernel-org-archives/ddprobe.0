Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C8441748E
	for <ddprobe@lists.linux.dev>; Tue, 25 Oct 2022 18:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 729E9C433D6
	for <ddprobe@lists.linux.dev>; Tue, 25 Oct 2022 18:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666720853;
	bh=JeAktPh4BvGRcrvoeXx9lrdE4Z60sETBWZt7L3Vxj/4=;
	h=To:Subject:From:Date:From;
	b=Y331mLRhd4cGjvqf4xWwL/jkWUOng2SXvzwxl/aE4+N8bfhNFvg4+YQdVHQXqaSNo
	 ejAeGjOVB7J7YGddteqthTVl+FIAyk3C7ubji8G0jC4zV0kKS92EO8Q6zonRZTZPa+
	 r0W/gUzr3IQNW8HV+yWxglLXjiT1J99XuYoCNY78D8QoNJSE/HXwlhh4HJY+B0hLvk
	 hzM1ZzRH41+2onkMiZiEhIj7gClHNxQJr92XFJ2YXNKj1XvhG20MpULQD1Gx305mBU
	 WL/ncCiUrKJ+Nze9HUBR1GuyhWAodj5qqSIBKx5E8SqIfxZ6re2LklfSftpkgtuVoG
	 J9hZ+i2Z/xTUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56294C38A2D
	for <ddprobe@lists.linux.dev>; Tue, 25 Oct 2022 18:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166672085334.3611.16876850875053281497.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d334ec8300b0c7cae1c70f0c260e6d82ccd9d0bc1ce320df72d43a15aa017c93
Date: Tue, 25 Oct 2022 18:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666720853
