Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE64F1C06
	for <ddprobe@lists.linux.dev>; Sun, 11 Dec 2022 16:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7CF2CC433D2
	for <ddprobe@lists.linux.dev>; Sun, 11 Dec 2022 16:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670776887;
	bh=NsxCZ7efCUbuX4BZEBr/wMidAQe1p9yH2WG5Nv/Mcxw=;
	h=To:Subject:From:Date:From;
	b=h+Dr/wtanzSudAUb++VS7wJ1dpC63AMriJ5HOpGPd/J16XJyjRihjTmZnjackBnAj
	 wCEi/p1YOaApzcpMcA7ct0LqON6T2aUqGmZW8Da117Qbe4N7zIzMeFNQwQ+qKStkSu
	 mM11hKCbcROxR+bs5NsFa3gm33fnavgI37aVPI9VjTH4as4+sUD41XmPxq+KUe1Fv3
	 Umcfe6gXaJrakp/4TdiKvYAIup3Ngde9oelZnWE09Vu/eKUgfzYuFfpDwL6gwhNzq5
	 yDRGSMbUBkZXkoOlFLWBwNG4sCL9ZHglIeK0QNLG8eELUzKCaCh3DbEpAYbRWzDSGw
	 olYm0v7tSuvvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 65A9BC4332F
	for <ddprobe@lists.linux.dev>; Sun, 11 Dec 2022 16:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167077688740.24963.18073438594492037906.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aae589a0573b81e9d6f12a698e7aee770143c0c346e688fbc98e401c99994e41
Date: Sun, 11 Dec 2022 16:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670776887
