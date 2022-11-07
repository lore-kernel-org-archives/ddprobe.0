Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D142B15A9
	for <ddprobe@lists.linux.dev>; Mon,  7 Nov 2022 03:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 75AAEC433C1
	for <ddprobe@lists.linux.dev>; Mon,  7 Nov 2022 03:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667791854;
	bh=lve/8Rs8zU1TBFlXrcJIRCh21sEgzwjU/uVvfqJrkVA=;
	h=To:Subject:From:Date:From;
	b=GMmc8/F3ZLEplI69xZK/I+ArpGI2jtwg0dgq51T87k3A35qZvOELBgz0O/s3OUPfk
	 rBJ3+16lGaKY6Ygg5Aur5Esrdh6EjcdrsFeCjAgjzwtoELU83rE5feC8o/umSfgN/I
	 nbf1LWV9b3JSPYtjo7KSr1QzYJgctlDAVBsHFea9dRg+v3FFDvpgFGTJaKEfXChd9j
	 qiOkWIeblSb1+L/ohJ53MkH+2xCJqhTwdnxGRIGpU3IWVBnfzoGPjEJMKpVRhAykeC
	 bJbzeqo6+uvGw7/RJ/azL0F0+6B40bumvHooV1FWP2kT682Olq5tO6A0hyhVoo0kLD
	 lrmA1ACDS09jw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5A5B7C4332F
	for <ddprobe@lists.linux.dev>; Mon,  7 Nov 2022 03:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166779185436.10155.12272488122618557397.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 212ed6059581a15cc05b56d3af3d78fb742a3263e688015ffcbb12c2495dc00c
Date: Mon, 07 Nov 2022 03:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667791854
