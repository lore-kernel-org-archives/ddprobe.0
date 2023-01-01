Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D532A7C
	for <ddprobe@lists.linux.dev>; Sun,  1 Jan 2023 09:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7E96EC433D2
	for <ddprobe@lists.linux.dev>; Sun,  1 Jan 2023 09:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672564287;
	bh=YkINdIChZk2yAvwKoxRE/ZrpI437iwyqZzhHVuEUVMA=;
	h=To:Subject:From:Date:From;
	b=rPt1SMW6zmbJD7WhlrvvC3nzNK1Om3PJknKQQPg8n/VJR/fcdpMUPQW1H1jg+i6Ec
	 OwBXdYc9hmLpwSsj0hOXcagtsUuhnXNVkj9E9hv4itpU+Oi7yNSIDyLM7sLD3XdnVq
	 nh/qsIa6EkaHyJTSCFUN6hesvedBQo4jMoKqSj2a9IRTBwBjfN83s8slT1TLOm6zN/
	 FbUBqjiw4Vf9MgHd99Uh8Ykja0QKhk38bUdMD8vK9Vkbc813qUlnulJJqhQ4ER1vEC
	 ruSbGvGQZZ0K+EO1TjA4Gj26X2iWa2rfWM78yazFVl1OkKUqXGapxLusrrbejYM6uR
	 L7m1P3XOVGy8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 609C0C4167B
	for <ddprobe@lists.linux.dev>; Sun,  1 Jan 2023 09:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167256428737.11616.2500138049720653335.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 89170ccca25ff3009aac5073321762a9e85bace496af70d4af71d3648782068d
Date: Sun, 01 Jan 2023 09:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672564287
