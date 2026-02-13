Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E3EAF3EBF18
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 02:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770948894; cv=none; b=ITlUkuhxu4Xf66Dq+DOn2MRnKxDGTi1xfpDG0HHme6qTFE+RQI0qh9Dx3igdos0D39dnP1fTfhWeZ3SZsNngYswfJtl4hjCkgSLo2ycEakvPQ6+73jK3CufFjuEAhEaHRc82YKeaYoLHvmCID/5a3JmXnaweI15cJZWvnfk0OVc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770948894; c=relaxed/simple;
	bh=TOGBa043XbFFl87DKpGQtSnJutUxrcH0fiUyNdVVsGk=;
	h=To:Subject:From:Message-Id:Date; b=mlr7cYgzmWcd59GDaQVvOChaBzMdxSZxP1br8Qdib/CucVyREevIe3x2r7CueTKB3Q4wfvGV0xsfY2Ci7DviwEylHERWcoA07VTrI1w1WJcC3L11mjY/Kv0NiliW0EwAILf5v1k/E4MRfEmoE9+oJUDSkBaObGnvBjc3isnP5Kc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W9taApje; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W9taApje"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4F15C4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 02:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770948893;
	bh=TOGBa043XbFFl87DKpGQtSnJutUxrcH0fiUyNdVVsGk=;
	h=To:Subject:From:Date:From;
	b=W9taApje4YUSiib2kqYqPxelndU+fGbhCQgaw7Gicrpvt6M2WQMX7MNQACe+eSwt9
	 EDfvBP2TEfmYpDjmHniz+YXb+mlhZthVgEf5ILt48Ynh/9scESEB6Je8bjyVPnhnQu
	 x6HJZ5CfLcidl8o76JwrshoY24Arb2xG6owvhAv8XXYGvQpw4WGGq37aEW24f4fFvm
	 z/NQYrIaPauC6E7YbsPCvRqdcK8UliJJeKWQz5h3XWbgd9vPBVwCpEqMnpdQCSX8RK
	 wnWvXmS/RCl4sOx3oZD/me5/QTx1Hj++Z7/x6gFtplIcOVGcUhBIfRl5z/faguLo6q
	 4gsr3U0tsCy/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98AC4EEA849
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 02:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177094889361.31151.10859362264618811168.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a4eb32255d498c6a22129985bc59a07701a0a6e5e6b93f4f9b579055a5493bb
Date: Fri, 13 Feb 2026 02:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770948893
