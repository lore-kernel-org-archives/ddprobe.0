Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE1B328F2
	for <ddprobe@lists.linux.dev>; Tue, 10 May 2022 14:04:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1652191499;
	h=To:Subject:From:Message-Id:Date;
	bh=la/F/5hg1dJajqB6Ug4tFK8BA9YaihJQZjs5v3s7TpI=;
	b=XFOlToYT6+gDfWe8SdiDDwIspUq/q3hzYAkOq7oW5WsZiPN5rJlPpGUU6mHzyUeW
	whFU9OoenAgjEWDUy988DQQsKmE6UBvNONLFt0usAcRkeMFWNikaaaTcwEnwtOC1WTg
	Yssm8/qyK3R02o8Qyka9HD9jQVIdHEgF7V5fYwuA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652191499;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=la/F/5hg1dJajqB6Ug4tFK8BA9YaihJQZjs5v3s7TpI=;
	b=BGMgD/MMfhHKhL55tmO0NTogMJx947+K3uR959MkqcNwjYHonReHzU7mKyZDV1CE
	rl7R6V2p7u5uVIqf5vvRJ0bmyIwOE8bi5WiovkDlEA4sqFW9i25XMNJp8G5OP/yTznt
	W+c3W6bmihlO/zpzZ6eMJKcLldlPdKo2LLc+3B7s=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180ae499416-ae50896f-ce03-467f-bf8d-f3395287d636-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ce00cc72cc8f6637525498ada87ba25cba3c9fd54d70dbaa7efd1f3c0d041189
Date: Tue, 10 May 2022 14:04:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.10-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652191499
