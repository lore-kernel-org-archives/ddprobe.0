Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A0836FD7
	for <ddprobe@lists.linux.dev>; Fri, 30 Jun 2023 06:53:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF1AFC433C8
	for <ddprobe@lists.linux.dev>; Fri, 30 Jun 2023 06:53:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688107988;
	bh=+Vj+GvPbYtL4fhrL3zkBdgKAPnyYk7PrNHuGe5VCepk=;
	h=To:Subject:From:Date:From;
	b=uaChKKSzbS4Rgx3Af5VBRZZ9A58p9LvkSIrTmnEYYndwLT7pCB7akb97ThR5v/2dL
	 v00PMBIiYnqGrpaWAdYQKvfifvBHEPT+AKrlpCw8iL1Lk28eSgjqRzBWhzGieJaYXQ
	 IiulNFgFc/X32bs0NTh/Olez4UZsLXKli5oDnABEQy0jUEBbFgEBvi/9L6gJb2+6i5
	 YaaqiWagIPiu38s5okJJ87bnmx5BbL6UZXoj4+XZZ6eHcA8D5yxoLPCV6Ls3wmwGTg
	 Jk9HYd19Du0J+PDL0gE9TEOb1NVRcl7UJ6bz66os3Hs16ERrCbe4urHiubxRNuZKo3
	 SFkPIjAKcK2DA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A726CEB64D7
	for <ddprobe@lists.linux.dev>; Fri, 30 Jun 2023 06:53:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168810798867.29879.18362437622816823316.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 586bdba14d9e5ad6cb987ea90da9dd1e05eefa0b6fac4219880987c1324d8208
Date: Fri, 30 Jun 2023 06:53:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688107988
