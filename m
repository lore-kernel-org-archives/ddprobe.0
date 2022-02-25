Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9C27910EE
	for <ddprobe@lists.linux.dev>; Fri, 25 Feb 2022 03:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645758685;
	h=To:Subject:From:Message-Id:Date;
	bh=42vxBmmiWBJ771SDomvtJZiTbJFa1dgM3AsEW61uVcg=;
	b=b9hpu1FCfBJDKF4nAslTt7gAzQJ0K5QSinhlThEgwGjedH1rgG+Wxxsp5KA2USXT
	+4h+gZCZZ1v98LW0KPld5aIIw4dnXbQQ9EUeMsyORMp0W5H5T39PD1JLe8MxXEm/TEH
	3WDTTTbifm/u4vHZvLB5FFsu1/gEFWy6U83VDeD0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645758685;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=42vxBmmiWBJ771SDomvtJZiTbJFa1dgM3AsEW61uVcg=;
	b=ZQTQl/SHbB9xcr6mJeLxIdtZ6FkEavrTPTUOwW2Yyho7s8PnOcQ/sxwjjepeY1wU
	YEhnRILETT2uzmPkkYzQUGuAn3MUM01oyiQe3s1HIdNvUV5pjZo78x4lIW08EXtdrqb
	R+UGMuHYkSkHr+WSIyiomx3n5MPN542WaZUlZra4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f2edc9e3c-c5877d51-1058-4853-bc59-825df6913a80-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ef327c12ae47542de8f93c3b1845dbb4530669445eab0582fb52349d1a60b50d
Date: Fri, 25 Feb 2022 03:11:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.25-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645758684
