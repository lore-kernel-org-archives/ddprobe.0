Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 021E120E9
	for <ddprobe@lists.linux.dev>; Thu,  7 Apr 2022 10:31:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649327518;
	h=To:Subject:From:Message-Id:Date;
	bh=jIeQGzfSOQ6A4TkoQmBaGlgRJIqt/YAyCRQ0k6fbhAI=;
	b=TOBQV0gLHnwdWRIIROcZr3Vlwg8GUOc9bvLiqwobxA+BT8PDviDo57yUtkXzeIC5
	oRiKnyE5RMYJBb0GbpyfpBpP7MjuAu9qccOn5YNX1bhtFPCHc/ivEz4ByIx3OZkoDu8
	8+eq+7qU7VOEhaMmB8ACqoHv8Jodal1vXfAeDQ+k=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649327518;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=jIeQGzfSOQ6A4TkoQmBaGlgRJIqt/YAyCRQ0k6fbhAI=;
	b=FyeU2LY100696L5lTk1vYZ4fN0p5MNQ9u3vhY9s2OAY7Llmqdlza32rMBpPhqJ9w
	MA5U1qED2EdwlhJK1J+l5lQl9bzEepydx7xYZSBRR5bXPfBm7m6SuWbm0iAdZm3mj4c
	LOtOOw10RH0gzokjWdjm1ErhxHArlKXspxK4tqOI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101800394b217-27ce4fad-f4f6-4ea2-a22b-0a7049b2be36-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 197f6cdfd24b2994a9eb6ea9e6793ef748425023e42b7e06173a627d4b2ee310
Date: Thu, 7 Apr 2022 10:31:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.07-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649327518
