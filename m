Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BA0357A
	for <ddprobe@lists.linux.dev>; Mon, 14 Feb 2022 14:40:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644849621;
	h=To:Subject:From:Message-Id:Date;
	bh=tIWZ6LKdCBuSTl6YgvTiHm/tPs05GrFh5bYcVdn2RRE=;
	b=GLpTRbnA19hnFric5jqI45TY6aetgNE3zidRjd/pQuBnGURprV4AYtfEATEkxbFk
	5batWOssLrg1Vx515j6nWM9TgmJVXclEDlHsl/jIKljEcDPEBhFKCtbjUoyh/v4ZA97
	LjIM8OS6yHUI1juh5LV6/A1pFZz4y/2syFXEM9z4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644849621;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=tIWZ6LKdCBuSTl6YgvTiHm/tPs05GrFh5bYcVdn2RRE=;
	b=SaWB7KBjrz04lc8VtwdRBYgihbJiVVqlqjVk4P0nf4toVuAf6jfzZvMAq5oDjqCj
	//b4GVpkueSvzem78AssZPJNA8ivT3YlyYMoVaS8CV6Q+IMrgBtHBQ9tuuK1sgH4tFj
	qUWqsEtKCjxRl3FP17IRhHydmpoG5QhLWVWMBa/8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017ef8ad6a93-83b4b4a3-4772-4ce7-9198-fd6298dfd849-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 715a28b7089b180b0a259a72e6d73762a2c09d4aca61a227c11c2ca113335c22
Date: Mon, 14 Feb 2022 14:40:21 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.14-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644849621
