Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A91915137
	for <ddprobe@lists.linux.dev>; Fri, 18 Mar 2022 20:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647636684;
	h=To:Subject:From:Message-Id:Date;
	bh=Tf+4X47QpWRuqQTF57+Kaz6q1okik6U5ZT9Azq6mpxQ=;
	b=O6VTPMYQR6pfohb8eV1/bBaBd6EijCX/j3aHoeTD4JeNC/nMPj1njt4T3WXzwvTv
	SKN8l6Q0YKSqefGE/wZFkZ4n/IaaBxSgE3TWNaNBs92pdtVK7jz3WbPQUyIj1ypy9Gl
	AdPj7ri4AWQlmKRpl15M3oV/14TacJjHHrQ2lKvA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647636684;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Tf+4X47QpWRuqQTF57+Kaz6q1okik6U5ZT9Azq6mpxQ=;
	b=FxkxbNzt5b3JlpautqTePfwiCJ4C0oxa+ZyieIx4O2DDW9S8yWf3KeN6YDjg1S0K
	Ud4yYw7F4RdN/O7ekwiVWizWrv3OS/4vgtnXn+jbPQhGkmRHfD2Ck8IID1jSPwoAH+p
	It+iabjDgO1XECBHZzM9+/HNEhXtXr00ZSSuFU1I=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f9ecc9fb3-5d722890-baa6-4503-8fb9-ec5a695d3726-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c549477646263d787a128f32cbb9a9f720dde43a4b4388bd30d3ea03cba6cd6f
Date: Fri, 18 Mar 2022 20:51:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.18-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647636684
