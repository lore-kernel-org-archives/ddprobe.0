Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6CE847E
	for <ddprobe@lists.linux.dev>; Fri, 25 Aug 2023 00:24:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA555C433C8
	for <ddprobe@lists.linux.dev>; Fri, 25 Aug 2023 00:24:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692923048;
	bh=yOS339fcyc4IHrCq+oYE1m/fiS08j5Hl3cCIFRQRg8A=;
	h=To:Subject:From:Date:From;
	b=JVCcVMbnphaf1llglyhHgad8LkArO9iamkSuxzcF7O2DL+v/oGrntgKfjGHnboQsb
	 B6R7CWAejS1/xYrRs2QXa1qIPhygU8IpLkci0QdCRs5KiuDqyLvYx+z0pKlKpg27m6
	 l3P3XBO2qlJ1Ej7g4N+E0gNzKoMYLONbdL1Xac859RahBragBY8AtgWA2zJYLKLhwB
	 xnBiNjy9GGTROvNM9fu8HfLD20Qo3/iaPde/LgyuZ9WuinB+DXAlPYUiD4Q3nl9kMc
	 2oKMbE+ib6+NKYCPbNGd9ZtFkXesjAKaOfYy1Cjv0kViopKDbEfqq5xSiuY/d4dSJ7
	 NlaRc2xSFHO6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9CC2C88CB2
	for <ddprobe@lists.linux.dev>; Fri, 25 Aug 2023 00:24:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169292304868.23151.12202775044383784681.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a0406bdda308098b6ed5ea8e78c82269457f3fe9c2471e168239a0e8b51ac0b9
Date: Fri, 25 Aug 2023 00:24:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692923048
