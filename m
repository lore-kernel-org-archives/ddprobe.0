Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E9093374
	for <ddprobe@lists.linux.dev>; Tue,  3 Jan 2023 06:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C483C433EF
	for <ddprobe@lists.linux.dev>; Tue,  3 Jan 2023 06:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672726887;
	bh=QsSm1A/1yX7n1GTbUp22+tDWJAF9Bntd9RZdc99nTis=;
	h=To:Subject:From:Date:From;
	b=QSvehqi80lSTh6cyOQtWsyUuPQ1RAUrM8ZCFtRsJJYgp+thSstvXII+3yT5sawFDg
	 0fDSXbQd4THzGztL1rfJ6S7W4v7tv6p0JNBDpxNM9kP8/RQhaYnn1XbD04ValV5HaA
	 dFYk8VSK0LGJWFuyA/tGqOfH/5MagRjDRzU5EWKo1OYYJT1fsA6Cqtx+KYVBRT+8y4
	 lpX71tu6GgsV8A9KU/mr531CmPD499YwrafpNvHRXz/usZ1nG3dops0YcGIdbTOebK
	 xE3l8PnBZKZDpD6+D5zzf8O38cpla8z4bVlry2y4SSHVPd0JmlD29QH5FOl1HkV3BW
	 9TIxwsii7qZdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7F75AC3DA7D
	for <ddprobe@lists.linux.dev>; Tue,  3 Jan 2023 06:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167272688748.9186.11533514224311563280.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9fece649341abd843913dde2b23aee13542935f0e9d63e3d81294799bfec21fd
Date: Tue, 03 Jan 2023 06:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672726887
