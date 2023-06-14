Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56C156FBB
	for <ddprobe@lists.linux.dev>; Wed, 14 Jun 2023 13:07:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2070C433C8
	for <ddprobe@lists.linux.dev>; Wed, 14 Jun 2023 13:07:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686748028;
	bh=rZ+5jKd5DQjqMO8Dkd3PTphVDsYcPUvItzR/jfgsdgU=;
	h=To:Subject:From:Date:From;
	b=IESKJzaWVTgCfRxEmcUad2GOAHi6NGqZsAkotmFJ/6Gjg1wS8b0AfZlBsLc7pDjIg
	 Jjn0arYwZigCp7POdLq+mwEB7QJ7+QdsONoKBYN0B2znlDa8c7C/7jlHHgRwjDB/58
	 3ZxSSZX9qo2Uqmchi4nkfNZ8Dh42gEy4ApKJkM1yIETApi9dQr2yoNM2CrYtLa8uqT
	 GckoaRmRJWdoUtWFjlkEcc9nHoXvIE8tRoF/jqd9sfRvLkLCzt/v5s2qVYT9mvf9Dd
	 La1UN0z8ulXAKjTstRDL7vBT1KfgoODb1bPPt4tDOItUoV9lkpr3dQHbaSb6SBtPpu
	 jDoN1WdNngvvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD09EEB64D8
	for <ddprobe@lists.linux.dev>; Wed, 14 Jun 2023 13:07:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168674802870.23593.15277115872754786766.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 879eb4804d82a79b0cf9a1c96c2bf0c50e3876a5b5ee43022f98f39bea12f7f4
Date: Wed, 14 Jun 2023 13:07:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686748028
