Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 516DC7F
	for <ddprobe@lists.linux.dev>; Sat, 22 Apr 2023 04:40:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id ECA8DC433EF
	for <ddprobe@lists.linux.dev>; Sat, 22 Apr 2023 04:40:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682138406;
	bh=w+EaadVVIy0Owtbq6slUWcG8+RpaX7hBuW9N8Qhmuhk=;
	h=To:Subject:From:Date:From;
	b=ISjKwO/5lJGklJhZx1EH5VLFDUeyX0Xm0ZtpBmdMV1TDsUmaVNw0RXdgitksgxUSo
	 flk7tNb6IDzpsLNT/bTT15yCkDEQi5lUpSX4NgS94WPufMK6SNlvba/AhyqhwYZaQZ
	 msxa0KodMZe5kOEbjZVw/mzdYcLsryVilvN47ayGp49h0+lMNZ/G+Lj7XdlPovXV94
	 XFOUvx521FMpkQz3nLQARGCdpCynx987krbKbjx5Zz6RWfpO/sM67ZwvP6Q/G2u4sC
	 /PyNyLPwL8zblhzVUq1w4tJX4UX1da66gDvirbIE8MWfu/cmm46ISb5HvrLe5dZKpL
	 f/Xt+mhhKt7oA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C40C7C6FD18
	for <ddprobe@lists.linux.dev>; Sat, 22 Apr 2023 04:40:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168213840576.26144.14064147068763326969.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab7c5f0db12a491893a267477d9770019e08fd439c9de15353b89ac9afd0a57b
Date: Sat, 22 Apr 2023 04:40:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682138405
