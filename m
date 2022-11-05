Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D4C4146BF
	for <ddprobe@lists.linux.dev>; Sat,  5 Nov 2022 18:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 84676C433D6
	for <ddprobe@lists.linux.dev>; Sat,  5 Nov 2022 18:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667672454;
	bh=blMc3B+LkxDj7ZtrXGxnt/3x68Y60k9WpdjV3SNvO5E=;
	h=To:Subject:From:Date:From;
	b=qT1j+R2F4ZQOtOv9ei9PEnUvm69k6bIPcGEKlvvg5vitwBaQYBRVt8PEsS3Fn5E53
	 NQS/xTIw/qgYDohdBSmx1SoUyCDztKkjoWdLuB3ZQ/FnCBSYHoQ83O0pIUkKOhwqtW
	 SJeoIzrIwoM/XuLDZuMGX+wjByGht+hV44zTmFM4nIdJ5b+5aCZhX3eu06LLLGW9I8
	 sVhK7hEeNtA4xl2CBfz8KpxjBk8oJLETOUQ12Y2+wHE52uzETmWb5ohMKE2Bpk2cu4
	 ZmP5YcxJt+qn/5ixjQRH7DVuaBZfvYSGHSm12+oyb0EpW4LqdAslEgckp6Qib56pOl
	 Kxes0bCSqcayA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F941C433FE
	for <ddprobe@lists.linux.dev>; Sat,  5 Nov 2022 18:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166767245435.30656.11551765247972727412.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 20a0c3310f1fbb2ce87ce6ca64eeb31865479556af46aad6b95f520a09499cea
Date: Sat, 05 Nov 2022 18:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667672454
