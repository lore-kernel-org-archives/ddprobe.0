Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A13C18C29
	for <ddprobe@lists.linux.dev>; Tue, 11 Jul 2023 13:47:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0813C433C8
	for <ddprobe@lists.linux.dev>; Tue, 11 Jul 2023 13:47:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689083228;
	bh=nNYJK5sLtq/e79eU/fcypnaLVgVPneSWvithO6MpdTU=;
	h=To:Subject:From:Date:From;
	b=HE8OVl5X2WcliYx+dU9fWlig5Bh+m06eKH+rljFvMfgVfOZa/sifM9ikdwesQHyvq
	 jCjQ+QU30TqvIQN7CRoJgExTWvXDVxbi5cCMrSkc9Rf/NPIsedOI09iRa0nSy+5Hvo
	 do/2PLqR7ZjDZm/f3D3KvfLMMelhoMpisCkmbwBGX/TJWp6CuWkZqyBASwu+RT19MJ
	 gOvogk21c4j3caKrkUiLCPa4qCfGaER7TJvxXrft3F40XZsK33jGZ0M4F9r3q434eg
	 YJ33o1FyEVVntE9cZAvIZsI2Y3DMDH9H5ecu/FpbP5znm9XEGqWjySxJEs2H/YHM8i
	 6GzqmD1u/l4xQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A73B1EB64DC
	for <ddprobe@lists.linux.dev>; Tue, 11 Jul 2023 13:47:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168908322867.3386.4435543251776387594.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5f7ddefeacfc3ffc62b16f96d3855a04e6fd1acd7207f54be3877a403e92ec03
Date: Tue, 11 Jul 2023 13:47:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689083228
