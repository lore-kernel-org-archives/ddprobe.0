Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55BE34C86
	for <ddprobe@lists.linux.dev>; Wed, 27 Sep 2023 02:05:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D228FC433C8
	for <ddprobe@lists.linux.dev>; Wed, 27 Sep 2023 02:05:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695780308;
	bh=esiJ79qPcaPRvfT+kVwctg57F/e9MDqgGWEskk4ezNw=;
	h=To:Subject:From:Date:From;
	b=UTN6X0BAL3RnlHI06Ok/Yhxxc3CIXrziTxLSqiL7W1RBgNxi3VAMPGI4OXoRl+kfH
	 wXSdrOhTGhbrdST2fMSbOdrt+ty3YoVyiPrChDRWCPdXil+yxOgqdufEBORnJ2yRZn
	 1aETgAN8cMhxnmRzC8uHBZ9vB+lMgyXEtIEY16YbmBcKKGZTu2AZQgjNoQF3oOByDM
	 B3Pv4kMGR1IsdlS0DkHBExCAaK3pPRHreAHm5CBE2VGqotXOpJilR5eWxG7adugysk
	 HXMB7Rq3DKzMf9hirrfUUZMDXV19va1CLR+km/ddYCwviyN9Hpu9Y135JrcRSnvksv
	 7DdYbKoyxplRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B511EE7F150
	for <ddprobe@lists.linux.dev>; Wed, 27 Sep 2023 02:05:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169578030873.29853.8618291282788659099.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 68d6d82d298a999ff39f36b4a323ab442de52412cfa8f9c9fb518bcd8c6906cf
Date: Wed, 27 Sep 2023 02:05:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1695780308
