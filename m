Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C09857F
	for <ddprobe@lists.linux.dev>; Thu, 15 Sep 2022 06:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 75052C433D6
	for <ddprobe@lists.linux.dev>; Thu, 15 Sep 2022 06:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663224653;
	bh=xVQutjmMJzO6RvQJocITvPY7IQN0ZNoBMsuglllbLt4=;
	h=To:Subject:From:Date:From;
	b=R29u46UyIjKBcS5dK+oQOGVXs+qEv9B+ur4wvGkZn093fpkxzEqRtpPWkzBM/8hVa
	 81h5W6OlAbpgiKwsKoXxzoc5Tk5b93/5AQ3OFtbEUflmJ2m/3V7N3378HiOmot46mZ
	 ZP+QJ0mv8PJ8pVgaCMGbFNVsu+Vl4iaNBnqsYRhffgu/h48BkeK2vcrze9IQSwb9Hi
	 c7EvyrFyuuOvSlpqfZSD6aYK+XgeM74+AKLMTofbfkKdDFD59J9PK8NiqqVhpoJjJv
	 hcD8fZ9/noB9EYrizXWQpgLK9KfecFfI9WSBfFqn+8n2ZhrNXoJW4qZW+ym6ivuODk
	 7wf1b3sJSM5Tg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5728EECAAD3
	for <ddprobe@lists.linux.dev>; Thu, 15 Sep 2022 06:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166322465332.19165.975452337093638486.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fdf5fdc0b600a29a946ee487922fa4b95bad7474fe0821bb2aaf03754ff6c9b8
Date: Thu, 15 Sep 2022 06:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663224653
