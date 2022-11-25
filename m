Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C03E05C9B
	for <ddprobe@lists.linux.dev>; Fri, 25 Nov 2022 15:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 68322C433D6
	for <ddprobe@lists.linux.dev>; Fri, 25 Nov 2022 15:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669388454;
	bh=qz7HzMld+1jBYZctfS/XsWF+3L9jA0lxOuJ6qreLVZA=;
	h=To:Subject:From:Date:From;
	b=DVdKYYjB5hbOhpLBkTajkwNWA4BGQggdiqynacRkiVcZpO/SU080GQ79pS0VvQzRY
	 kVuRyQBAxIx1xdnKGSbcMOr56dsMBDmusFqkl9/nJvNkEYCYIcj5d628uYgWJjFUxK
	 1Aei98agzAcCtQNLDs8GeMY1MzhVMEA9u7rjuaKukFrNynuXUQU6P4cV5uiqq4BXvj
	 lyaeyI+nIXudmDe2eHpmkOz+mihUxRL+gM47Zj+BfmejoThKweiMa6OMML9KO9iQnM
	 EcOM6N2q6JlGBysREsuqDnSx1ZFIyJMyQW0V8mbt6EQp9sS3pOD18UUv5USde3OmI8
	 +jD51VSXrzY9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51626C4332F
	for <ddprobe@lists.linux.dev>; Fri, 25 Nov 2022 15:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166938845432.26484.14344093731307444869.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a201d54b541bf62d4e58aa2f8f7e26490c40abca48bb5d9358d7b3ae7b42353
Date: Fri, 25 Nov 2022 15:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669388454
