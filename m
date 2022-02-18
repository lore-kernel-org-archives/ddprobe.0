Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9C0D8322B
	for <ddprobe@lists.linux.dev>; Fri, 18 Feb 2022 06:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645164984;
	h=To:Subject:From:Message-Id:Date;
	bh=4SzuUWXv+g/WCpALV/llkKrOECM1LFjtw+ombytuw8A=;
	b=A/P66Ika5YKcToZEqSzkVMPECvO0h1b+DWMXe7Tr5UZko9lw2nCnIJwGKSUnm543
	my8gXmMzxfOoHbk/+lglzJ+j+CyU4pyeaxC1Ti6HlXW/XQ63mT0tyeT4xxivirBEwgU
	hx+0HsXPuRa780pwldFSTgVCEOYd9kvUdzftSIUw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645164984;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=4SzuUWXv+g/WCpALV/llkKrOECM1LFjtw+ombytuw8A=;
	b=jPyQ6Gpg9YNKO0UraLYZcY6eoqhPVfj5n4QalRwGgW8YXUxxOLKeEIvklmcYPGMP
	/NkCkxLSbKFsykkVdq5GD4AaZ8SFl2VY+7jwqf/PLu84yDno2/zsOv6dXYdp9gL4kpN
	UIZyqsvBJfZk0YjEGMKZTcmDicom7zKQFdfcun2Q=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f0b797999-8eb90492-b5fb-4706-b671-7f98634d8179-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e6c38226e8ba9df9df3837103374d4b43867cf285f677ab65ca20b4cc827e9e0
Date: Fri, 18 Feb 2022 06:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.18-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645164984
