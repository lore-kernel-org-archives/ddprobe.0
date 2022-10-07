Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B7CA3EA3
	for <ddprobe@lists.linux.dev>; Fri,  7 Oct 2022 09:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6B32DC433C1
	for <ddprobe@lists.linux.dev>; Fri,  7 Oct 2022 09:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665136253;
	bh=JZO3mx6bJ4sqk9U8PfL6kK3vW8HaZ20sUKYgVKeW5BA=;
	h=To:Subject:From:Date:From;
	b=sw3esUnrfAI6wb6ZTjJYk/wOJcRG15rCgBrbfdOVgXyhS/z0NdHqDiKaJeXsby4k/
	 bXDQTJihHkDuR3gYyKohc2fyXrcy7SVitA9ZVi/A2J0cNubrredoKp8R24RrUx73zV
	 zLFK9N1aPAQ6czYXpnqQTUtm5Dke7qVzwlsIJeIowF84vvgt7dL72Kf/3CDRELoc5v
	 L86osEGwTtMAeI5BXOZ4PoyiGb03usm5Qc6Kccz9Hj1Es6w1rTOfhMd8ujnwmjglcY
	 hAEkZZLzCQCA0IjUbBYxvCdpkTTPruGilB+v5E+fI6+28tm9u3tPa6XNX67qrUWoWQ
	 l3QkoFh9MuMhQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 526CAC433F5
	for <ddprobe@lists.linux.dev>; Fri,  7 Oct 2022 09:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166513625332.23468.16026342914220493342.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a56eaf24b015ddad2c4eea497c6443b009e40c6a956fa79cbd88dab510c75cf5
Date: Fri, 07 Oct 2022 09:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665136253
