Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 761CE2F25
	for <ddprobe@lists.linux.dev>; Fri, 22 Apr 2022 20:15:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650658558;
	h=To:Subject:From:Message-Id:Date;
	bh=QYGuq2I2VzI2O62dEL0+QxY0+MPtTnhR7IYPJpmPxnc=;
	b=lW7NrMkTBhCKdo/XYIcE4MikmjOLpMAEOHTJxNiZfM7zbXD/KwUvsDi25Zurqfqh
	2y5F69gDjzYqv3EHj7hn4nof7+BZ8lLH1OpS7ZybRWZZYAy9bYTgEnPx7Z6D+wtslAv
	U9IPgVen6WWVkJrHwX6yWTUGAPjxLS9iyr01265Y=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650658558;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=QYGuq2I2VzI2O62dEL0+QxY0+MPtTnhR7IYPJpmPxnc=;
	b=EKtZpmxt78tR0Y35IAM9jXV6WszmiqOZIOCSoK4GCgnwhvjuPwh9cPaNRNYmNKgq
	MKLvt+I9fDudOnqcAm6o88cLT8L8MNyDv6OOYGLllGyL56dm5W0IsBEv61FeXt4OJjk
	eczjs0z10pNzDzXWMfYwLPjMWQ9JPvZszLlj5xo8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018052eac12d-cd9f55f2-2ac5-489e-8dfb-6d084ba5485d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 72e37093cb3e16bf553b5a570d78f915b4714082265a8a7144de3d844fc68368
Date: Fri, 22 Apr 2022 20:15:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.22-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650658558
