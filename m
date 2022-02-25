Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 838907B
	for <ddprobe@lists.linux.dev>; Fri, 25 Feb 2022 06:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645771584;
	h=To:Subject:From:Message-Id:Date;
	bh=a9jRyB2viDVAityXMD4Qh6M2HoHCSOIbrUvPO5xtla4=;
	b=U9QGBLsZkUNb7CcFM8g7UeU5CYtBFdPwDeyeZ0qjBVdOUvb2bG1njNVxiDkTNJor
	9rT6Aad4dF38GEc5Bjq2jjWaN8OQgirD+lSW9ZS2JR8ElkzwREKuRg09x4COXwLuLYA
	sZRZCes1yNvgeIF4VqBHRSpmsmag8kKKNJ37eNLo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645771584;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=a9jRyB2viDVAityXMD4Qh6M2HoHCSOIbrUvPO5xtla4=;
	b=Z/GLdLxMThbPkIXPN3hhhxT3GU3JGv9mhlCEIgBfwraBfgHobrDihcMQepb50RSO
	fbZlmuNSFF9gi/dAM/f54XG255mycWmpt3QvAGbH24Q2IaMGFaVmAqcIxVJeEKPgmJd
	3JC467/CwXor+NvR+M7QsHn1W8dbhOHCEd3IUIR4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f2fa17526-7bad82f3-2d1d-486e-9772-c76bf277200a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b0e78067f3a135a322482e14ffe507c52064559770f76f1d180c171e4578b2f2
Date: Fri, 25 Feb 2022 06:46:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.25-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645771584
