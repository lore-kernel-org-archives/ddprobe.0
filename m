Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D59B17E7
	for <ddprobe@lists.linux.dev>; Mon, 28 Mar 2022 22:42:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648507378;
	h=To:Subject:From:Message-Id:Date;
	bh=Qawj3cIWxOpcYUaE9P5XQrN0DuXLJ2yE8NcuTVQCIQ4=;
	b=W8zh9WDyyPjL/OGGJODmGjmClznsmBsXzc9Be0e04+QtmYaJvRE+AYD5CAZRFltV
	RcATCO3GJEl4pJkXX55BqEL8ntk0OLRx4yfe8QfrZVEjJwiUUIb84j9x6AaGJw3xRGm
	h4DpfMcIoc8hT/Bpmgn49NxCS4EebCfaqp9kd+Zc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648507378;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Qawj3cIWxOpcYUaE9P5XQrN0DuXLJ2yE8NcuTVQCIQ4=;
	b=jMkYiOvphF3/SHsZe3+qkoLsd9pFWbW0Gw1ZWQCyUH/VEtaBb1sokSuEFay6OkKq
	9hOK4ByPkbpNaLYFF57l7LZ/+r6sxe3UELnr04A9jDOr5iY/ObJJZq2KSu3/WysM/6M
	a5d+RBY9PRVJaICIg2iffpQmvSx6ejOZZv5UqHY4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fd2b25a63-69cdcad6-6eb8-4be0-94af-35ed1d754999-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: faa1c5a00914bb3580f68a532d311bcff1e28be7530855db687590b3989906e0
Date: Mon, 28 Mar 2022 22:42:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.28-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648507378
