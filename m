Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 126C75CA1
	for <ddprobe@lists.linux.dev>; Sun, 20 Feb 2022 11:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645357585;
	h=To:Subject:From:Message-Id:Date;
	bh=ba0xNQNhPJR8rXfQwI2CoGvtFC5W3RQn3yLEHT9pe98=;
	b=WJ4frXqGbBkqwegsRzrhPv8eRfQZSLuOWbvXuHqG0pmkN0+WM/NoAhoHTwGitFiC
	1NpWsf+Rzv7ED3duyeAJgDh+AaFzoWJQf9WLMcfWdVo6Y8ZohwE9aVseuuRTDwfFqdV
	RyAez8Lp/JfhrYG1LaTO3tZ1J5FN9hTFMcXPMkuQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645357585;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ba0xNQNhPJR8rXfQwI2CoGvtFC5W3RQn3yLEHT9pe98=;
	b=KRY4NHQz0ezUXcO6wdsnnHmDfvW/NvtEKZ68lewvR0KRqQcjl7PbyEJA+V22obqN
	v7hnlnQx+bRZlvDu7k6HmmGgJ9mj4fB9djqXtgSLbLANMQsbvmBGkBu7biy8vJaaOj7
	LZLD7t9Ko71jRUrBl0PD5g53UkYQkgTq/fm823hs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f16f451b6-2bb5fd62-cb27-4fd8-ab45-c053513ac905-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 183911372a9132319df8617f9c83db735634615c394170994167d31fc7ff5202
Date: Sun, 20 Feb 2022 11:46:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.20-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645357584
