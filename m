Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D61B2368
	for <ddprobe@lists.linux.dev>; Fri, 11 Nov 2022 19:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7C27AC433D6
	for <ddprobe@lists.linux.dev>; Fri, 11 Nov 2022 19:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668196254;
	bh=top/ddxle2W14pqyBIj2ON+gtnKUNFbD4p2qo6E68y4=;
	h=To:Subject:From:Date:From;
	b=JW2oMLfL7TubAyhpGKJkyhV5n1VuXnR8Orq/tCD6i+8XDs0r6JjHXpfP5mEft3ABs
	 v6kuP/3SAofSYZGNkYaUR66HWvK6yFo54ljQy2lo6Te49A2bqNUx1pugB8izlAD+Bq
	 Cmds+5rx780pO5FNGW+GiDaRvFmWvVVBZI4hdjWH8NEuECfsTUTd63ItIssouTtfvf
	 +j/u8EFWx8hCNGorwXWSEkinWx2akl3KhJ5ZM/c1KZvATi7r4Qj1AuhOzvm4HAOxmO
	 H4swDIelDDnmlHg+m2fUySraaxIZNtl8aeok+C5HRzgvb5OhD4JlwZqKJnFRG29O/p
	 h9s9Xyx4N7tRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61B99C4332F
	for <ddprobe@lists.linux.dev>; Fri, 11 Nov 2022 19:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166819625439.21953.10993869600336823304.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6bfa5da248f53c20649161049e43c5bbf5b0be7dcea17af746eb4d80053e3066
Date: Fri, 11 Nov 2022 19:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668196254
