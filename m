Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7B7FF13060
	for <ddprobe@lists.linux.dev>; Tue, 27 Jun 2023 16:33:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id ECF62C433CB
	for <ddprobe@lists.linux.dev>; Tue, 27 Jun 2023 16:33:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687883589;
	bh=MeclgTbP32Zp2C1P3NFLKcRG2eQRkNwSPuqoUC9haJM=;
	h=To:Subject:From:Date:From;
	b=l1BoDR+ltwwnf7YfMGHn0hh5jrPp4Un7Cw4TJoVwVVZS8KWu3wXf5dYD1gMBuXV38
	 o2bbWWA9KHVyz0tx1YbbAePzmnPgGZuS9bqoet73uvwUPabXLjRutINcgDEND+wERy
	 t4YBLNZHvWbtP6dRZP5IpEHz7dNWTlcbb60XrdkKPWb9GcTnI2GGD94jK1XodDCWmF
	 BiiY9vbhim6mwDeyzMgprC/dYqYMlGHBsI19XeS92B6HF3cy4LJ4YjOgVOozFDl6Cd
	 QD9LkK8JRLPbHdeMAduZyRR2eFvyNp7YnzCMBcBrOcWgpmG+sPGciWPuf5EdC/YWkT
	 fxW3VQK+uQPaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2848EB64D9
	for <ddprobe@lists.linux.dev>; Tue, 27 Jun 2023 16:33:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168788358878.14315.6906830201646699847.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e9e5af81722c6b3bb780d760daee2119fc9c22fa99a570942ac7b84673f32423
Date: Tue, 27 Jun 2023 16:33:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687883588
