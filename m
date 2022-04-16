Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0870028E2
	for <ddprobe@lists.linux.dev>; Sat, 16 Apr 2022 20:50:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650142258;
	h=To:Subject:From:Message-Id:Date;
	bh=kSXBKqOb9wBYzoFarGclw5kgBb/E828/wIBYIbB95bE=;
	b=ZbMlg4+iD4yWhMXtBQisvN/JmkoPvMf97KtTzOQfm9DhfptIKRKHvOBwgzdKJeqJ
	2KIAaGbYETw1eobz065Bx0zFMRZWE+kURX5k258hHh4bm/EqmxlZH6Ggsa50O31mPnZ
	EoyZiJsL+VSSgFec8grLXu5IYy8hAT2WlYc9TRxc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650142258;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=kSXBKqOb9wBYzoFarGclw5kgBb/E828/wIBYIbB95bE=;
	b=jLH9bAruwMwPObMcyOJvlFEu7WuUk2ZCppu4gY+F+DCiuFbEeAPdHFEv+rrFQaSA
	mQF564G44doKrFKp0bb9zY8f09QElzYe1ILO4EtIswoE336dYHi1Rctzes1ZhFREWyn
	2Zx6cXsH5jGWO9uPDBhCXT330q7nbBo8ai3TWD8U=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101803424a45c-ebfa1fb2-addd-486b-bfe7-bd3732c9faa9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a58e918012d073a06570cea9e413e216a9188b93e8e85dc4209fe47ffaad62e1
Date: Sat, 16 Apr 2022 20:50:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.16-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650142258
