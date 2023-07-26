Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6789FBA51
	for <ddprobe@lists.linux.dev>; Wed, 26 Jul 2023 13:02:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBC68C433C8
	for <ddprobe@lists.linux.dev>; Wed, 26 Jul 2023 13:02:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690376528;
	bh=fOdnM7DCLrBe2a/ou31XpcLpgpfLB2lDJW+m6kf7C40=;
	h=To:Subject:From:Date:From;
	b=QFcrFdC/GyXK16Buq7qFGdfY+g9oX1I0rcSUr1pM2SgVd5oZFznfAjxF0uJp7Oy6Q
	 E1Q7Ju153kwe8gxa3QCrKYBTDhNMmnTVuNLXH+JvjvJsd2HSaysPVus3qSxYrSsll1
	 JvhF8hXIrhT5V0cBgOmLXUewNKr1Izx4vLLMvbhyDZMw9QMKUFGdVN1hwC+uqKwtPE
	 QtFenr3t2ItpMkTkW0JoCZsXF0G+8ES0e+b0xk0kJTcW3uw0GZUGVZpwYsUPCWpj7N
	 gCv7TpsGcq4GaKzMrESuIHS2uXIz/pisNipQYpGuuv5jqavOOECZ9PylnQKni8O9qr
	 Vsqy05q2qqVjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B32E9C001B0
	for <ddprobe@lists.linux.dev>; Wed, 26 Jul 2023 13:02:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169037652872.16645.6367032929202191516.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ed324e4ca8107e8c026de39d6e195d343f6530766550476fadf0c4dc93c6acbb
Date: Wed, 26 Jul 2023 13:02:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690376528
