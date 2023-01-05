Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DC1E9EB27
	for <ddprobe@lists.linux.dev>; Thu,  5 Jan 2023 19:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 85B48C433D2
	for <ddprobe@lists.linux.dev>; Thu,  5 Jan 2023 19:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672945287;
	bh=ZxwrQFfDOMjeLj2F6r3B+CY/lT4960TeRu1rKvQZ7C4=;
	h=To:Subject:From:Date:From;
	b=VE8m4HseFVTNXLccQbYClFvWd7O/tQmwRyWI8fI5wRdNOfCJqMz+AJKSdXCl8OhwG
	 cZ01SPgqnNOvgT75W9eHRf8BGDh4LuRUM/aGq+7+U+tPo/uq87UJda/0iAcqDi1gls
	 amyQRGTr0iA3trv2d5HYR345AnwgJzOOsXHLTtoUbjD3YNpUHWnVOOrlucMUddBRvS
	 43AYwtgvIuUW0SgTJeImJiVFxuqpF70wKh7pNjjtjcktypYagKnhyxvEvvgVTgMWih
	 nbTdd2TMbMzs/in0PrAspZQb3WlK+dOVWU0NFL1SXa9v63t1Dcluy+JaEtBBgWxHYt
	 Jf5wO3ULMOgBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62350C4708E
	for <ddprobe@lists.linux.dev>; Thu,  5 Jan 2023 19:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167294528739.23910.14579495832287301936.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5131b786b00514ad5c31e079bbc364c4c963ed88726c36d904e9fed43d80fedc
Date: Thu, 05 Jan 2023 19:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672945287
