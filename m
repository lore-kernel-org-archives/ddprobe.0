Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B6A254419
	for <ddprobe@lists.linux.dev>; Tue,  4 Oct 2022 19:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6E4BDC433D7
	for <ddprobe@lists.linux.dev>; Tue,  4 Oct 2022 19:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664911853;
	bh=9+3sofNvaewbrtmU9jPpn5EttW9Kz+NFNk2HwVSZPYs=;
	h=To:Subject:From:Date:From;
	b=B3XWBfwT1yE+WrlqW5fRtRfhhm/IJUswSXiCkAkgSrwsHMnxujnR1rQ2Ke91Xb74O
	 3P9wSbC1hYKvAxoyF4KE+UOVwseZMYytkaBPaLvlghZEIfrbXlEpZPBONtuilHfwG2
	 GGbj+Hk9tmKfDqsapPJjQtOhkrdDV3MSQe1ZnkNpFZco8uJ/oW8aDXuM2eaUt6/4TC
	 sVmVYX7m153fWq5z6kBbD//C7YQLh3OYESkxv5aMrKdrTvWKY5PetUrVQDu+UVZddO
	 Utxq0NTeuzRB0WLrNhGmuM7Kmv+zIO48jkHZiFPiH1+gWcVPFvmFX4uq3MbexYWZzt
	 LjDW551orAB7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5441AC433F5
	for <ddprobe@lists.linux.dev>; Tue,  4 Oct 2022 19:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166491185333.7381.4646961350728627836.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a8194016c30d333a238da07896ed821e6e4e6f4948c1357391ec2ae3d05ef430
Date: Tue, 04 Oct 2022 19:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664911853
