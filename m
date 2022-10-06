Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C9997654
	for <ddprobe@lists.linux.dev>; Thu,  6 Oct 2022 07:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6D1FAC433C1
	for <ddprobe@lists.linux.dev>; Thu,  6 Oct 2022 07:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665040853;
	bh=/CgBfNOwrO2ZnlNEGZpXORGWybDlS9po+8Cg84RO5bU=;
	h=To:Subject:From:Date:From;
	b=SV/GE7ecaJQcOKw4iDKqnbBCV/NpKJb095akoXWpD4ktbX6pxEwWae2Oa02fjqzBI
	 hPJl+C6k6QpVUSWKC4Vu9qCpFEsf40FSI/OwF5vmifpTT2lmW0Lp+J3Yy6OKf4J69K
	 IK7SJ8oSBTKzv1wGRkVE6/+5ETLHVrVTHny2OF9o2wsUgqSyuKr3mmcVZAybOkDBdp
	 hMThcrm79hjxuT7ZOWtWH9vWav6fxRiihQK73U0LYUqRFrOY11WzlQafdmUXEF/Wdd
	 FFoJEP/irunrWKYS3W6kZ2IR7z0Q0uDc0TbKItykhU2Hew5uAd4EGGQ0ZQ745S8Mdb
	 MkUhfQ10lRnIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 50F2DC433F5
	for <ddprobe@lists.linux.dev>; Thu,  6 Oct 2022 07:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166504085332.21929.6210158075839480478.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ca65e692e0ba3821ab0b96f9d8a50550950d3d847bcaa45ce92ea1c397d155ab
Date: Thu, 06 Oct 2022 07:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665040853
