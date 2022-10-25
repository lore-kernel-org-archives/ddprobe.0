Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B4A8B7B
	for <ddprobe@lists.linux.dev>; Tue, 25 Oct 2022 14:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 71ED8C433C1
	for <ddprobe@lists.linux.dev>; Tue, 25 Oct 2022 14:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666708853;
	bh=1zwbrWUkyzlf3WGa8S3Dqy3Gpz4O/kTHQryw7qT9Wy4=;
	h=To:Subject:From:Date:From;
	b=QkMomeR/bSUx071vk/2YL5ZNgjvx5gRMTXT8bp5StQ22nmYo8Jm4JX6DtqEzm7Nr2
	 UAMFxu6hfePumKeisiSpEgbxcdbRFrix+JGKCY/xLJI1QG7tS5awLeTDL8h1blls9/
	 m5QJDhDyDvAyxndNWaJvKu7DEk13u4k53vs9YqUQ6vE3i75seYBYILkwVMLBWoCnHD
	 mwz+99D8B2BvAeiPGXFKN3+/6pxAhX6J6owhq5LnvZHMZJ+spEaTS4KKHhykLwn26M
	 u4e1ryY/exjJjMo7lCeBNaP7UiifDvsURTNAazdGH0tyDIS3o28eyH0KJxJdb0AQeV
	 A5pEvnoZAczVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 565FFC04A95
	for <ddprobe@lists.linux.dev>; Tue, 25 Oct 2022 14:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166670885334.17304.15632647695911631232.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 14c794ee5167c69a5398ca2cd3a7e41fa3faf0d2a4f3d33d8d6138c292d62ce5
Date: Tue, 25 Oct 2022 14:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666708853
