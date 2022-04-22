Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5AA147A
	for <ddprobe@lists.linux.dev>; Fri, 22 Apr 2022 14:20:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650637258;
	h=To:Subject:From:Message-Id:Date;
	bh=reBplbSRHtwYMfLMpJwW2gD8hf9jVhjo6doyz11iyrw=;
	b=K359hZpBcVh9cnMuPR8KrCh5D+AN+yZaaXnE71ngfAVkjcb9tH9cPVvkXf7zoOva
	OElONZkqsIMjL4bPpeqkT6wNePxIzkwNy9hnB3AYAju1wJcsKOdKfpp7Jas6cZtVspe
	I9bdxmigCF6yJA5qKXLfsmJ6peGNtroOu405IwsI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650637258;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=reBplbSRHtwYMfLMpJwW2gD8hf9jVhjo6doyz11iyrw=;
	b=hmOZqP1Rp462NA/w3v5rFVfwcgYXEbbNjT2z0PxsS4+3GPn+94JH2kWMFn8itUDb
	2wyXQVSGhNhwiP0ErphJt7UgW64t6tT2oSKiN51VHAg34IMKNKWlrJ6rDa/3NfAQl7h
	Hmrt3J/CkKVHDwWHzGcQKcHs49iJOFKJpmJtWh/g=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018051a5be3a-c69b0915-4cc4-4d49-af7a-e7c4428e7f9b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6e2a4073fcd2aefa3560322c057ca72dafa6bc85c916e25b3ecbc1bb3ab842ee
Date: Fri, 22 Apr 2022 14:20:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.22-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650637258
