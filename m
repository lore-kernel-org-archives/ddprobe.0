Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA78817C7
	for <ddprobe@lists.linux.dev>; Tue, 10 Jan 2023 11:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8EA4BC433D2
	for <ddprobe@lists.linux.dev>; Tue, 10 Jan 2023 11:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673348487;
	bh=6d6ENN26v6kiw+C3LxVUHKGuhBS+UWdAIfrojXvmjVg=;
	h=To:Subject:From:Date:From;
	b=NUjA8GuEHF+3x18FN7MCRLqmi43pOjHbOteFeTrXTY/uEAtI1kEEkcx5bbW967pOR
	 kuFQb5H4VC6yMO9ZwjqI0TnE6iq2IVrUGhLu8B/nDehy7f0sx2vJGoFS/Na0YEvAlG
	 ADKCmynLjSLJqSOJ23iNitiVwZvxUbWpD2pOngHZ4wO9VgKnaXgph0J/88jhnteLsF
	 +yPws7GgGkVaZkzz8YOAzBppF9K1nY6n7G4FargRTo+KHu+gm9t0sNrhaYcVG0mHf6
	 tyf+bnmkhkFT4MpCbk5oDTgDiPRoPsZtYWNXV/z22KUJBsWQBGzUrSN3cji9T2i9oF
	 p3/hO/qJWNJyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 741CFC46467
	for <ddprobe@lists.linux.dev>; Tue, 10 Jan 2023 11:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167334848746.18035.7979291171904443718.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 941cd2c2e84cb2b734eb6c460283f767cbd3af15544be288067c4872fa10be31
Date: Tue, 10 Jan 2023 11:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673348487
