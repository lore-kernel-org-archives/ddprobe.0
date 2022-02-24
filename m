Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA45AC88
	for <ddprobe@lists.linux.dev>; Thu, 24 Feb 2022 04:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645677085;
	h=To:Subject:From:Message-Id:Date;
	bh=gvaiS1F2MFualaAbXgnBxZK4nGjvLxB/PklMA/Zt2UE=;
	b=BbpYVDFbjrmAIiAUYDNgwjDpJ03dt17bS1Qgp09+RYLOiQKbBMbY3tH1hrT3OpJC
	EJs1MBX8Ehf4iWPTWykbuAx75bxQVlUv7yQB5UizHEKq/REi9sLJcShwf0LkWHfbtin
	47aNEkKkDywSqcIwwtKCZuGxFQJ7Vc/61jYhilFs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645677085;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=gvaiS1F2MFualaAbXgnBxZK4nGjvLxB/PklMA/Zt2UE=;
	b=an7oUb/7w2HFxf6vGZFeUTz/KPlc/sfxbQP7OP19sMNlid2AEm7rBiPN09miDlTd
	aU5Q42WeMNEQ+kxV/CEGXsDlc7FWATHItlABCfv/RzcZQtnXyTb56LeB4EbYEZ9yUs9
	GZ8bsey9XmOFfJQa/g6tCEUCePcoesOQXrqaiQqU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f29ff8059-9ffc8bc6-591c-48ef-9286-358e87b4fdfa-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1fbc245a84a3cdaf279e9833fb9635e4fd790dd4d4efe3f27bf5401514b2e2e7
Date: Thu, 24 Feb 2022 04:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.24-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645677084
