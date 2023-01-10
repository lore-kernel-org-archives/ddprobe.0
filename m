Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D9AE833FD
	for <ddprobe@lists.linux.dev>; Tue, 10 Jan 2023 10:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8595EC433EF
	for <ddprobe@lists.linux.dev>; Tue, 10 Jan 2023 10:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673346087;
	bh=Ry0OTUYG+d2sW3WCqPGDuhVW4LR5E4nPwap7FhMKGIg=;
	h=To:Subject:From:Date:From;
	b=WB7QhYwt3+5o/RpeRSNPcKhmjk8DiH9axqy26eRhmqmI5IUxqwuyw3mOrCi1yKKRM
	 r06UtJPqxBwK6OjNDqQJMxxLKdXcUacmFhFPlg0xGzZs+H2EYZLdn0rb/Y5xOVvy4H
	 Dta6yMyGquf4ZS4BOeCEogt1VXvuw7E77qtBU6L7Mjbkilj2fm4AAh1YvZb0Mg13zj
	 5VyV/T548rhgPoXTSmAyjEs1i16hX6qFjTmcCO4ST9HrK/rMYH1wK1tooHLUssP21w
	 wGtAnhxyeicPZ6iLdSsgHMXcCHWPqNrKJgdaNAlVy58Ww7jmAfiLU+18fiRY9PrfEk
	 1DAzKtqP6jVBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6CA3AC46467
	for <ddprobe@lists.linux.dev>; Tue, 10 Jan 2023 10:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167334608743.6369.899196463503631730.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 53b14a5e5b56ca9b53874395acbb4711a0b574fc08b5a6afbc7706e9a6efc4f5
Date: Tue, 10 Jan 2023 10:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673346087
