Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DC395A5F
	for <ddprobe@lists.linux.dev>; Sat, 10 Dec 2022 03:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 85803C433D2
	for <ddprobe@lists.linux.dev>; Sat, 10 Dec 2022 03:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670643087;
	bh=8E4HbnA6aMdGoRhMFhguwGoLt/4XFEOMe6clw/pXlUA=;
	h=To:Subject:From:Date:From;
	b=eDdc796YhRzV4ymFuCavIrW4n/hyuSVdoMIoPbTrCxvh+SDiybx//RAhno9EcYdHY
	 ERFaeUcVId1SD5BLn/B/H7Cej4Xj5P5mohYFyNwLdXsFGunF5E64suygozpswjMt0A
	 LwQdz1PKvaEjbC+wIf+7JbzuZ0j38245woAg44HFLm+6DRy6ZGWqT5aNeKOw7OhyMr
	 CLnWzqKfMQXvb4ehI6nYyUMwA0MfouNRSRKtElW5w77wShfSJEwBZ/LkBb3JbZ5JUs
	 aMpUFbPlmP2l5w9G1EYYvmqwpjRecKLZUtovsDQXKOpW+xrfHFqtUGs66MaWLytF1l
	 LFny57H9PHpKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 68584C10F1B
	for <ddprobe@lists.linux.dev>; Sat, 10 Dec 2022 03:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167064308741.12346.541999455524968702.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4e79c62dd17d8e9cd73fdb8e9614ac6c360d448af43b1629cf7f2048dbfea2fd
Date: Sat, 10 Dec 2022 03:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670643087
