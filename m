Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3402A17CB
	for <ddprobe@lists.linux.dev>; Fri, 20 Jan 2023 07:42:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4156C433EF
	for <ddprobe@lists.linux.dev>; Fri, 20 Jan 2023 07:42:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674200525;
	bh=K3BjJh6U0gHRr6ADmasgLjXJxh3BV/CfVCARQopAGac=;
	h=To:Subject:From:Date:From;
	b=ggqC8DYZ5nvzwcGkuijJBBPdpf4Mqt3k/j39PYNZp4szGr8uYqSpEZJd8fURsBHfk
	 YaIrP0V06uTgCAaIS/ofCvizAPDNBGYlepa0XIQhbrRP633AA63HJm7AnPwbtQLTOu
	 0LJDGNWQv9TGuYt3WQMJim+1mlnS029gJs984Zn1NZxW+BsNHYrfSHwWl0IGuPrvjT
	 tsv+IaaFcZdMHlGV9tlZAON2rzzLzVmq7UTm4E63jf50VnYK9i5I5zEpyRgC4it6mE
	 IL3b2Wvp89GOPcPsR/MPF+tnjkGpazjN2Oe5LJNYGZVX/kjgwmbblx4klITdWeOMP+
	 9aZeSBd/qOoxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5364C05027
	for <ddprobe@lists.linux.dev>; Fri, 20 Jan 2023 07:42:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167420052573.24396.8463177630084983679.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cb9114dd2fe72a1266eab3c2c45157ba79d0d45ff0421b28b1dab0b4f588d331
Date: Fri, 20 Jan 2023 07:42:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674200525
