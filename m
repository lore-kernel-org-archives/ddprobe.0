Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 014ED538F
	for <ddprobe@lists.linux.dev>; Thu,  7 Dec 2023 03:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BDuxJVQF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 78BFEC433C8
	for <ddprobe@lists.linux.dev>; Thu,  7 Dec 2023 03:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701921496;
	bh=Jn5dXteLE8w2CW6N9APqUE+9rTU24NspgWQg8nad9gE=;
	h=To:Subject:From:Date:From;
	b=BDuxJVQFvMEyao+tXATJ0G3iMY7+i2N+bggbbuMXV1hebocJX6Cuzi8ZaAxcnRv4O
	 koRi50897P3TI9vhsocQ+mbrgJ+dEZ+or6VRkEUQCqvdfZuFNSp1ofHFQ2xfP/uNRK
	 rH8BeeB03KfIW3Ma1o3kKPqr5fJtQJ7NsqSr2geOlbctxyKmnUUWyKJn246QbAOW1P
	 ORlgAPLv+iJVN2Q4Qabt2JT6Pe/LJahINVu6jC7wbrb91Ld2Di5Lz/CQtrL9KFoIOO
	 klYNODZa+H2OD+fNB+ai9Cv5Gp3NIqOfpn68NbjpmBeeIuPdEQF283xtPtrevlcEa5
	 8CIJ9HIS6Bb3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E8D3C4167B
	for <ddprobe@lists.linux.dev>; Thu,  7 Dec 2023 03:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170192149637.32531.16009244864749759187.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0f8b765575f4f13f5afcee4e2e4cb1434d75bca67dd293542f6d409b8ec9636e
Date: Thu, 07 Dec 2023 03:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1701921496
