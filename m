Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D5DC0360
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 06:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7AB42C433EF
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 06:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672641087;
	bh=T8PY9PIEekV8+UbAy2xlvAnDK8VoJaW2Kted/dOmAqI=;
	h=To:Subject:From:Date:From;
	b=PUlsL/p8NqmrRnbBXzhOAFVy8CSl7G60FD9nd3TgKfVae0M6CSQtO7ymZ0+BDJoO4
	 pQqBYi0ek1ZAmIfttQQXSaGJhPbMmjMd5c9NrANe6T+o/VPyOrFPVE7+cXHCFmfO58
	 ds1ZU6zIqmZsYF3KPMmsApXi4FYTYLWyCfptzctF9K31b0JGoZHEEdPlWKFpk7iRn3
	 F8BMfFCA9fjSjoZmTbVBoRIE0UvBthjaf+jw1SuhNcUqKbJz4VPU9T59PAiWLaf6QK
	 nKRCNlStojgBmEL8k4XG2Pel3NoSXWRVgiZNgshjrqpQDE9z5iPCAKLAOdYetSRAts
	 Hm6yWOkRAIgvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5EF0EC4167B
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 06:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167264108738.22232.7038352102195907410.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fd7ca289b0564298039beb2164208db1e61b5eb47d496eee8f215abb4298842a
Date: Mon, 02 Jan 2023 06:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672641087
