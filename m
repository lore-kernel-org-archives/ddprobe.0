Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0077314283
	for <ddprobe@lists.linux.dev>; Tue,  2 Jan 2024 15:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UHsgSbaF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7B6A0C433C7
	for <ddprobe@lists.linux.dev>; Tue,  2 Jan 2024 15:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1704208696;
	bh=WukcoIsrfhoBPg1ZGseBlNeQR06yPUyRZttittJ5hkY=;
	h=To:Subject:From:Date:From;
	b=UHsgSbaFG5BS/HM4T05rvrCAjoVXZAokggznrhk9VxJl4kRfRJKfttvdz47ISiQWh
	 P3L2bShGNstgcDLtcoyLnhNdzjDQCiha7jzW4XIqYCOwLlSkTZJ+xez0EjgbKu2lVa
	 kTTqIGmM8OdC91/o46FIT7BU3Moa2aYaiEJ+/5ThY3Hw/om59j3gZv2aCa2vzZE+/+
	 jPVyOVf1Fh+539WJuZVjlqW653qLXHQ2cBNZip2UL9dpOxfbBVigl+VlAs4SVnXWxs
	 6Ag+QrKsKKqFMekO0QnuWG1TnxNKoCHRVjmso66Xdgho5oXfUhFhJYL0TjJ+mZl6Kv
	 9S0TkimP/0O3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E10DC46CD2
	for <ddprobe@lists.linux.dev>; Tue,  2 Jan 2024 15:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170420869637.16324.12020977601580815969.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 13950149e8aae1dd97ffeace43300484acc13b61dc58fc105e9b104729b44712
Date: Tue, 02 Jan 2024 15:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1704208696
