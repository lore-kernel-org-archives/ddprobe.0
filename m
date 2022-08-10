Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 76F3F5CB1
	for <ddprobe@lists.linux.dev>; Wed, 10 Aug 2022 08:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660119652;
	h=To:Subject:From:Message-Id:Date;
	bh=7jrN2HLRjbIW9JzVkyz4wLowmcC36txpcw4XKbioTUQ=;
	b=YS0rDF3BjAY8+Qze/TygDvOUJmqB6A4LQPOESfifYVPrqXsg10RKpOxUkGsD8PHX
	1r9vvqlIElLmG1M7+2Sa4zDea0vISQL5kMcLbAgKoteFdLgc7j90G6QRNzV/H0ctXQk
	/7YLH7HyxmxySYDkV5dkM68LGOtPWql3+vkOH//g=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660119652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=7jrN2HLRjbIW9JzVkyz4wLowmcC36txpcw4XKbioTUQ=;
	b=dG68o1DVbWGwixHB4kt+slpH7BMjuZ6PmqIupbt4PyyPiiqMxgc/U5zgAm8jMNBu
	IvlOgDsuIcJQ0k3IHpdw1IGsJiVU8X0PDw43l7/qunwF4HLN1AlqDksrqGNsSoCeEGA
	SMZpysX9W8GCzDh0vMsYy5OeNcwJ8PIFFTQemnQA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018286d798cc-b844ff7d-7a4d-4e41-a480-c968473e9e11-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3cf3f57c26d60dc860ba25ee2eaf100d0ce31547789befe485017b7ac8219ee5
Date: Wed, 10 Aug 2022 08:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.10-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660119652
