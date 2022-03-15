Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6CF8523B5
	for <ddprobe@lists.linux.dev>; Tue, 15 Mar 2022 15:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647359184;
	h=To:Subject:From:Message-Id:Date;
	bh=n9RkDnpte91yl29/sSy2ViYXjxJxRB4apJo85DInlgg=;
	b=GaBHA8YmSyMgHhboWrMFEClpPMWP5yeEPW2AhTzpG58NPKCluuT0tJE6TaYt9uaB
	TPOrl7jJbIYypckBa/1tHQj3BOLpKHq+rAip2XIbUegxWJ2gRwXHbTf4cH2p3Pcl61m
	8wsMTCt7YgnXRuzfi8pLkGrU3BSzRi1m8S0XFN/E=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647359184;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=n9RkDnpte91yl29/sSy2ViYXjxJxRB4apJo85DInlgg=;
	b=TfGX6k7Nshaqd9tFLfqKthNHar0SId5/OBKuQhHZMhpCKIi4bhYyszCPM30DFwI0
	D/BeeMtCtIzJQpb6srw4KoBlOphIx3e9Ja57FbhUyFV4l2+z2cwRNcrO7RE5OtNNKpz
	vWzw5UlnFxZzZHZQ7FHXyXugOVplsDUOEQWfuBKE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f8e424f7a-22567ba4-17a4-4913-95b6-ceab18d9787e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 94ed8ae1382df4b0f93b212208fa441dcc5f355ae001c71f0ba2a6d0f146fe86
Date: Tue, 15 Mar 2022 15:46:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.15-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647359184
