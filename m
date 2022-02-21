Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8052133C1
	for <ddprobe@lists.linux.dev>; Mon, 21 Feb 2022 17:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645466185;
	h=To:Subject:From:Message-Id:Date;
	bh=7jyTNrGAoN5Z1m5MItvNcjDRg1Q07v5+xYQHoO5dZS4=;
	b=YK4m0oQM953hDgrn5IEyt2DinmNtPczdbDGe7e1fJJrW6BlmGmiF9vj0jDeFLw06
	KlWO4yg59XwY6QZXUYTp/KtP1otEMZx2a6YHBqK0BQE0IINOHN/Bnvjas5pcFM+1tgj
	u9z925jhjq3aIwEoPrs/54vLwE66LdGHQU019eDE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645466185;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=7jyTNrGAoN5Z1m5MItvNcjDRg1Q07v5+xYQHoO5dZS4=;
	b=ZXfhOpQveUcFlK6NOltgq5s33k3KWfi2Xf/r3jd94YR/lUPS3z9DE0bgKpo1qigy
	NhvuAP3LXubmxrAuU/Lua06FpQBFzBl5StvdXl9hp1JGXo4F2WpPv1JPpNljQntLpHH
	SxFs9WWP/EM9SPW73OzIAmTTIBua9sQjol5oLFNI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f1d6d6c47-2a9f7f87-ed9b-4568-a3e0-89126975bd33-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5a2cb23775efecf97427b21bdc2e8a45a227903ec162e688034706af082200f9
Date: Mon, 21 Feb 2022 17:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.21-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645466184
