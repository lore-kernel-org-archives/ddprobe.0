Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21FDA7E6
	for <ddprobe@lists.linux.dev>; Sat, 13 Jan 2024 09:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kIo+aIY/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 96587C433F1
	for <ddprobe@lists.linux.dev>; Sat, 13 Jan 2024 09:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705137496;
	bh=w3I+E6/bmNHFEupiXg8xu0jvOcMx4Iso3IJcyen3pHs=;
	h=To:Subject:From:Date:From;
	b=kIo+aIY/Jpbcktr0vS+e9l2CeFzpfalivYW6ohVjxFhn5g4q+EiJF6K1SUSPxfrkC
	 Esg6JZ/Y3lfgiqskzU/d0WvqStZ57zEZR/0HytFrpasUO7ygEV5m08y/+b71xXFQdr
	 b5m1KktYaYKzdA4kCbgm5qE2Q/J8bhxb5yJHDxJAbn8c9Q4l4u5VyXRx8lU5CyjTnH
	 d9UlHyQfrdO+kvB+WJAgBm3qbN5DNwR97dy+Y1p8LV6Pgsj+tHeMGl0bzpG7CxsoJY
	 kBNxX+5vooD68hdNdz4YFt59etQ4AiyzESx7aWnrEoEv0ldiydQmu4wMuCU2dSGhJ5
	 q1yN0YpguKg7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 78B10C4707B
	for <ddprobe@lists.linux.dev>; Sat, 13 Jan 2024 09:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170513749643.15899.15089002960870585791.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e9933b44d611b24c4f15b75b0cc4c03c1c54cf04b123970ddd66da92f4e75a7b
Date: Sat, 13 Jan 2024 09:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705137496
