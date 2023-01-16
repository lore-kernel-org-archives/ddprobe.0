Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ED2191363
	for <ddprobe@lists.linux.dev>; Mon, 16 Jan 2023 06:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8F58FC433EF
	for <ddprobe@lists.linux.dev>; Mon, 16 Jan 2023 06:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673851887;
	bh=LOMWSNPn9yOS5Rk2x5uIb5QuTh+z7/2hMkLzkXVzRWU=;
	h=To:Subject:From:Date:From;
	b=GWViB/wL2RO7M9VTrPkuYbtw0ntqD7Gm4bqFZtqNgED66gIV5cusJ8ttG8sC2nzM4
	 ohNG6FTCHQC412b9WX4ggfRrs1WJulitpzMX9Ez9ZURzmm0ikFtbyaPBU8Oo07OhbN
	 ON+c6s0AJ0vNnAKjqvuZDHIfz+mvEp1F3jaa8mCcBH1G6Ipla5gjXun8rK9rTk3+hf
	 r0yakpm/zbghX4/idYXxQl1rJ3qsHHxxygU9Ig3skpPGyglEooVtSUEhBNnXr4oBl9
	 dxcYt04CWfCV1hr5hlpzMxbES7neaEAE/bLvem6XoDClL9+bXTem4AKLaiL1QFBnfG
	 7CQLswLW9+XUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63C5BC46467
	for <ddprobe@lists.linux.dev>; Mon, 16 Jan 2023 06:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167385188740.27073.10187373095430730177.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8ac0297ea2c0eaa58652e4cd2db0fb0bafeb71764e13967baf8bfb3946ce9087
Date: Mon, 16 Jan 2023 06:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673851887
