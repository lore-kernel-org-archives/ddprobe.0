Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B5C8F7E0
	for <ddprobe@lists.linux.dev>; Tue, 29 Nov 2022 09:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 722F8C433C1
	for <ddprobe@lists.linux.dev>; Tue, 29 Nov 2022 09:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669713054;
	bh=Eh5tb0eWo3Ip1sYoH7UBHmP76TZo3WqayDkJNcOfIdc=;
	h=To:Subject:From:Date:From;
	b=gsyJHojPacFN1ZUKrBK9Ry30D5x5GwG9azbX/sCRjNylnmc8nuBsbV8ndFADgPqSk
	 58VN7yf+b7zqVDz4p0zT9XFRKcA/5xXsp/daDpWSkjBgCMIX2QdkyIoyGhqnxI93yQ
	 IRaLFBiePtiVll1gJMK2ckFVzbBzoREq9flYyneUObvxRv2UVt2ngTfFUsWDMpAT7O
	 aGa5PHw0gQLWpZiH22fj2YigSkJ080ppHs3QBSxb5JCZtfZ5vWXJcWvySBul8sjUpL
	 kAXozUXRIQY+A5ibrDeAnlITf1iU1t2xBbN/iaXzsDeKPSJFyVIK76ykn5PEWTw0C8
	 Y9KKnewKUz12A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56ABBC4332F
	for <ddprobe@lists.linux.dev>; Tue, 29 Nov 2022 09:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166971305434.15387.17594624236089074173.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6a6be55fbb73838201e3143cfbe72721fc1102cdd0102c4ba719b0a263d64ac6
Date: Tue, 29 Nov 2022 09:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669713054
