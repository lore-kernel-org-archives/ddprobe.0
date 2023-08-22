Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AF411FD0
	for <ddprobe@lists.linux.dev>; Tue, 22 Aug 2023 07:14:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C22F6C433C7
	for <ddprobe@lists.linux.dev>; Tue, 22 Aug 2023 07:14:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692688448;
	bh=4iag6WqEqJ3kWoCWeWME+gUFXMoxnpO8UYH0krd13PQ=;
	h=To:Subject:From:Date:From;
	b=aEodCoRRK5ua36GIgOxGUGKi7ZQUIh4VYg/9B6nc6vCYTI760bhdyTdzcPjhb9KIs
	 X9cb2FgDpHo3T4ZxeeK43Kdo6jpyyiOPG0xKvobWb2h0EIygydl3iMb8dPZGyICtSC
	 /XHd0e5ldcV+eZWHZWlVK+KO3W/K5Uk0GBpTpXbNW5UGyiJRYnE5KFsnXlvKTiESBr
	 N8vwPW8WgkOxZZlitGcAAEHmHSBMwpOayi7IVNQCrfxJG+NgyKslgQIo1dXHr8gGVC
	 mmnvlw3vEJF+unGcAkhF4cBG3H7SoMyufbAOIOs17O7F1BnMY9th9rKsp9bD78ttWy
	 FRTzQM5uEIVRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9146EE49A3
	for <ddprobe@lists.linux.dev>; Tue, 22 Aug 2023 07:14:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169268844868.7784.3170158983910086962.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 018c2f1cf20a1dcfe1daeee9695e5f32ff6c6e8002b23e2b898c7d56acf34976
Date: Tue, 22 Aug 2023 07:14:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692688448
