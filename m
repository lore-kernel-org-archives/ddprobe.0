Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 959E31B75
	for <ddprobe@lists.linux.dev>; Tue, 15 Mar 2022 08:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647331884;
	h=To:Subject:From:Message-Id:Date;
	bh=WhLqyDjicjdRpW9g7+9ra56PYWsW788bRfolHlUDMlg=;
	b=RD9V7AxZUXgbjAIwBayfOjVDZkfGVpYIqZHss+P+Brl615k8lwXag9jNl1vrWYLd
	QKWLDYzXAeK/8YcDi5GnQnc9sVG5t2J9hKPF+ZW2e3r59RVGvQfNgNcaL4Sg8FVk6Lw
	R+QdEEfALAfThUEm0f9Dq32xg2EGPwPh190NrDbM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647331884;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=WhLqyDjicjdRpW9g7+9ra56PYWsW788bRfolHlUDMlg=;
	b=EnZF1yboBPitbH56aU3jAc/L2FexWCroBy+nnG/ucf/bM4f0pmqqyWQ8EfIaKlTd
	TwBbnnkRpH/GI+2FUVB85GabBtu96VZM+Hb6bAWk5dTJOw+L0muDycsLJm1GyzTiU+Z
	hcBRy5yI6xZ4XLvZDSTHKXEkPZxqGXWMsxLeJg1U=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f8ca1bee7-be7840c5-5e35-4662-8be8-241a54490065-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b53bb643042a7537f94cc1fa08b0e52e04a740802772f37c9c09fdc42fc63a6f
Date: Tue, 15 Mar 2022 08:11:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.15-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647331884
