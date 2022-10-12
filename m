Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C1E553C00
	for <ddprobe@lists.linux.dev>; Wed, 12 Oct 2022 20:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7C037C433D6
	for <ddprobe@lists.linux.dev>; Wed, 12 Oct 2022 20:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665606053;
	bh=+elAQatM8PQS/bqklRLcLGilB41qd3/oiRTfFdZ98fw=;
	h=To:Subject:From:Date:From;
	b=ZzkA5wvIyvAycird//HtRpaW39qABfjfmHJg4CrVH/yIRWMxuP6xIDKo/On98JOiz
	 PmZMVGCV/O+gA8JoqtZyLrm4VZoX1jKXSw8VcHYa+AI8aEy0qEZaNeIkvj3H1exk56
	 g0aXW8Qa7kmBWCJQZpbhXfUd3O/rsuvn98mbRSzxiscPTHTgCh2SaBtRc1Fpuc+Bpr
	 BWT7rVr2VngXfoLhqHPnf5Ex0JEmFfclmc0NHRrNFfrwZY5kJSCE2AJeTQ3oLwBKeY
	 YPHmVtfdBbyAe6xAmtRYB6zbVqFPfRbNzYQ+hIr/lEINnrC16AZaJxglwTtZO5Eqp5
	 Z6IBKci6eMCNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 605BCC433FE
	for <ddprobe@lists.linux.dev>; Wed, 12 Oct 2022 20:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166560605336.30315.1243616105951849688.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 97e6f7118edb8c46ffdb12b49e9b1c0d7ccd36ae6c3244b8d27c7fa295bb895b
Date: Wed, 12 Oct 2022 20:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665606053
