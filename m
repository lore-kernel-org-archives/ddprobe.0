Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E31820EA
	for <ddprobe@lists.linux.dev>; Thu,  7 Apr 2022 03:37:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649302678;
	h=To:Subject:From:Message-Id:Date;
	bh=oB2F0Leh4Vn5a49+9bOsvksE2G/PRaY7R+K50w0Wz/w=;
	b=QnjExma+X9yuuv4F+oshLuyBoA7P8r6az0JWG6ElBDzJ0tj9nPbX5Q4goUBmj4bZ
	SkL1pLtZCNHq3cvDWr4jVSrfMQPfyvjBrvWh5wvZ6mA+aEZBefqq8QbnNwcfuEVq4P/
	7W4pXEo9UMZJ9q000+ZbOStTJvY3WbnlfNGvwCIw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649302678;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=oB2F0Leh4Vn5a49+9bOsvksE2G/PRaY7R+K50w0Wz/w=;
	b=c80EizG1nxo8LHI2I9OGP+iUmgVc8rIJNsdb3yNkn18WwCCYhqzEyu07zr7UFIgf
	bAHch46uujNU7A/B/x1bQz4mOTvYKzxboJnezfH0xd9b7WufSICxLfmKBbRhn91vj2t
	D6M5qBtOvy1gi+SwLPa/b6buwNVud0v5AlPr235w=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101800219aaeb-7c40ed78-afdd-439f-99a3-65b52b7b8ba7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 334ff71eebeff7395f80f87e03adec12031d7ae525c81aa2277079d2badd5c9e
Date: Thu, 7 Apr 2022 03:37:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.07-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649302678
