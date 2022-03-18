Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A03A54C99
	for <ddprobe@lists.linux.dev>; Fri, 18 Mar 2022 17:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647626185;
	h=To:Subject:From:Message-Id:Date;
	bh=nL5Vhgart+P6pbP6YGXevZ8ljNxmvUhvaGz0U7rdg2w=;
	b=jIUDEzCOZ6zYMg71SSm7r49kdIvmw/YNj3lOrxthGqHI2YT6c7NgCoKOf4BtR3lR
	SckcageRBqm8YiO+BFE+Zsh6SDKnDOAvaNAc1GHI0wkFeXFDJS8ghLx9sfHRZ62MspM
	VaW0ZzW0hGOJjyNWskUBQ7qpNVgEBFitwApkn4zE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647626185;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=nL5Vhgart+P6pbP6YGXevZ8ljNxmvUhvaGz0U7rdg2w=;
	b=c8xhranui5O8MqAG+Sy3CBMS+IV9VqOtxmfRWZWVBQ0uOAIog4s1FgPhQSRBmu4X
	CW1yuNvaLjLHzsVaWH8Hs+FrWcwwWoMWHSgs7mWh/i5LKgiVbG8oM3kNwVkuFLoy+A0
	VdP3AePqEc73+oesB4fmwPyyX/awumjy51XsI4RE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f9e2c6860-6345e0e9-47f4-43c5-8c6e-c75071b23640-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 45ac11dcb7c0fed8c739358ec96d3d93aa2f6de76ac85c9778ebe9747d35dde2
Date: Fri, 18 Mar 2022 17:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.18-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647626184
