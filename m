Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E2954182
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 05:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7E766C433D2
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 05:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672635687;
	bh=PFgWOY4IViF5LgEz0JDdP0dl5ksYgupLhdUjx3BLec0=;
	h=To:Subject:From:Date:From;
	b=J/huMoZKDBjeRUAEBbLFjvFeFeHBedqXmWEW6pSrTn8RNkzfbmQ0RlfGTK8HvNnpE
	 Ob45mKuNCJ8wCDTr33e1ApCPeJiMwknGRmp2KzW5syUNcb4WdUhYHiJ31Ch8tZT++G
	 DARV4z8IbKpEM9WzNKAAgygD+xALGULZ32jdIJosuxhjY/8E+y/82Ai0sNRUpJY9Ak
	 1rrK1ylgdXQcPtEaMkkfxP48g7+vYivKL661SPL615fNSo6N3TnqMpsGahr1W6vNAI
	 DVmdvGGpeyNzOIcWs2RTtddYpWvDYXbggUuiVK7Ap1FquWlKuax8WyvlEfL2Sovcco
	 H0nIiSO2dUSQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61F9CC3DA7A
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 05:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167263568737.17089.14366694721797638321.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3820f5e5fb17da4097ad904490ffa6593ffa3eb48948bb64802f833595709c4b
Date: Mon, 02 Jan 2023 05:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672635687
