Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42E7D365
	for <ddprobe@lists.linux.dev>; Sat, 18 Feb 2023 00:15:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0997C433D2
	for <ddprobe@lists.linux.dev>; Sat, 18 Feb 2023 00:15:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676679305;
	bh=Ro2qIke0gEJlhLIg/BUanQJTqg2g7PQgaF3CCW0wovQ=;
	h=To:Subject:From:Date:From;
	b=AB0xpwWR2++KYrrNe7WKOiW1bubYuV+ges89RULiIKxlacBmre+R1vmtx6k2xQqyz
	 MYgX88cWyAiuO72e+GFQE3T3KOLfWccrCrUhajQjVw+4UjrCiAn5ZUvvfnEs73lexS
	 3RkKGZL0Ahrwn2pWsAlCJQR5uVkYJSd1nB8hgfNMtM/PQ6uIm/gcU9QKelpYkjf9Rh
	 WRSk7lHISdvNr4OA/z3IKPMkEy9oAGKAQnFxL7Ee6lNOrlg5s76gH/qThy8GiNmgEg
	 0QY8Pot+FMdXrryW5bmpTf8hvRkJqpZfNy+aDRmziqFMr5Me1Fk8nh3u4bZIPbMQui
	 0ISAKVvA6VGLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B34AFC636D6
	for <ddprobe@lists.linux.dev>; Sat, 18 Feb 2023 00:15:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167667930572.21888.15715524699557777381.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f821014f90977227254f2f133155a7fc9b45ffe9cf490aea5315dbcccf91b75c
Date: Sat, 18 Feb 2023 00:15:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1676679305
