Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B5A8CED9
	for <ddprobe@lists.linux.dev>; Tue, 20 Sep 2022 14:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6B500C433D7
	for <ddprobe@lists.linux.dev>; Tue, 20 Sep 2022 14:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663684253;
	bh=qrWSv8L/NN9wJNrdPW5Cb/PQWtL4062AdfzwLwgjpxI=;
	h=To:Subject:From:Date:From;
	b=ED0lLLSS7JgQznhEzu1uTjP+sO5WkNgdKM259owq7eDnjuIP0wtCZ+WYBGP9o8uDg
	 ZyHgZNaitE7GRlvF2CVSR23OdikxuJHMe+yOsh0QRQKMyG0IHv7TIEieomW115RoUb
	 t5TXQz8odlY3lTsShKmVYyejq7AkcD5rSJLGSBdaJgI9d/tsh8E3ScfM5glVtcSb/8
	 NkahWw7hCeaz0/u9wPZ0x+jHx6TbFwd+BKb2fFBwOxX5swSZMnlRHYINaCh5xqaFjt
	 cKHlURc+FBFx1K+fDiXED2zsPZpIhLtWunIRzfX2lH1FLT7csTyukHKt+vcMaqNFqg
	 dpqygNUyrzvXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55E32C54EE9
	for <ddprobe@lists.linux.dev>; Tue, 20 Sep 2022 14:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166368425333.29967.18207313633208235292.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 166c64a1e2eee423e33bc9db67aa97aaa82c6131979662e4ac7abda4a0c8fb63
Date: Tue, 20 Sep 2022 14:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663684253
