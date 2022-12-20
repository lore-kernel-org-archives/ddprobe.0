Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D8AD47E
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 03:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 81DB2C433D2
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 03:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671505287;
	bh=Ifx/vLaQ4FqOW6QIzcuXx5x0K1gRPxiGg6studqda4c=;
	h=To:Subject:From:Date:From;
	b=llrstHbtet6Y7t/c/cInfk7a7ZkVV7/PBAac6R48u9CZ1URCChv+GRJZBJY+fb9p+
	 t1dl9YWCsXCzsjuuD2UynE8QupLjwbXdjBXl6yG/RcJKsEj/dO2iKURQYV1i/XC/hX
	 jidTU4PwKAVvi5Vhqst6EfZiMLlEVHbupNazdUTn7AMdxDQs8ScVWSHeepe8TBHH8k
	 zRrJzu8KZ4R5KlqQ67PHqahPkKPYYuFwkg9IcNZF/wu+lkG3CBMA+moBlbXYl5JEhL
	 cQ3q9DFGhMqq9FRDFWYbsqQKQO7nwG7QlLDVia5n+/sOLQFr/apzM2HXIIcu5nAF3E
	 hG/V1MWmG6lng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63AF8C4332F
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 03:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167150528740.2158.17119948460574799572.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c8f4f6a7984b86bd326ce10d5985959bd6f0bc2d8f1131d35ef2fdf6639826f8
Date: Tue, 20 Dec 2022 03:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671505287
