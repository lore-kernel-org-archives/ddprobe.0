Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C25876FC7
	for <ddprobe@lists.linux.dev>; Tue, 25 Oct 2022 20:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6CD69C433C1
	for <ddprobe@lists.linux.dev>; Tue, 25 Oct 2022 20:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666728653;
	bh=g3cNXyLbtSssKURN+ULHDDIJWNbvnUPd/hYRQE7VGZg=;
	h=To:Subject:From:Date:From;
	b=ZLHCCBBPG8N3T8L8GvoCEuZ4+ZsI6OyY1j8ekw+Ci2mnTSQXPajcGOtJdeK/ojsJG
	 YF7yaOusV3Yec6HVrmSmqR0Gta/9U/ZzDo/ImYGrf2lopoBG/kdixd7bM4SZ39gNde
	 NuMD5r/Zj2sTLiR3ovuuyIMV7ZUHI1LTn1xn9TsFqX5QZiuzO403uG6OSRUCRP78sH
	 he3z4FzHth5/5FByZAd6qj+Jx5vlEIEwPEzXqpjucbiGwlLaQATyL8hHUEIzJhr2Na
	 ZzbBiTA+xCpRFNLJ5jV3Xf1k4sYKwJYdEP5NCHm5OGWW1Jzjt6Bz1CIYDnT/Kmn4QV
	 vcycoEuCIvyZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56330FA373E
	for <ddprobe@lists.linux.dev>; Tue, 25 Oct 2022 20:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166672865332.7138.7721668229682295021.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3025df1f575834587042495609716f70cddd7033308b2016b2d475e57658aa69
Date: Tue, 25 Oct 2022 20:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666728653
