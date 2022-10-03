Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C06C917E9
	for <ddprobe@lists.linux.dev>; Mon,  3 Oct 2022 17:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7856CC433C1
	for <ddprobe@lists.linux.dev>; Mon,  3 Oct 2022 17:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664816453;
	bh=tvph3XZFjMdrOdRUh3zm9b5h4z1zaL60Ni8LBOvcml0=;
	h=To:Subject:From:Date:From;
	b=n+hK+dFyT4UQwZkuCPWN4ZzzCoByPw5slr2ITtj+VqutArEsVyg4YjPQiHQB17t5Z
	 n9uoBqsUD71UXOw+HTgbp2DHhFRBomwI/5cr8n8CkrCoSt62CC/vs3hR9i4wA08e8I
	 EQLoW01xRvCi3ZQquIqRsSZ/vZq/x4ZOr8N+o9vA4rOP56gk1ajxRmpzdBeTxTvqKK
	 /fR3vCmooMcSG/wXAbLYJNe5D+LVezAxnRc77HOjX/h1Z+KYSVBv6j9n92IsWLM51K
	 6Uo4112UdRh5bqHL41E29OtUZXVfj5PchJDVq/HOrtdyb7hYqa0vrZVoPgf4SuDlQv
	 kg+tOqKXhPRWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 59C3DC433FE
	for <ddprobe@lists.linux.dev>; Mon,  3 Oct 2022 17:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166481645335.20303.10522373823727108728.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 44ad051f92ecd61359b0c632019ca0b593ac291e0bcbf1112716fb187be4507a
Date: Mon, 03 Oct 2022 17:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664816453
