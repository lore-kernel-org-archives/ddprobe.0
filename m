Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF49FA38
	for <ddprobe@lists.linux.dev>; Thu,  5 Jan 2023 09:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 79E9CC433EF
	for <ddprobe@lists.linux.dev>; Thu,  5 Jan 2023 09:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672911087;
	bh=HfEDMHLDn10qtDoV5linpS7fecCn1RjSTZGUHTf+0t0=;
	h=To:Subject:From:Date:From;
	b=rMqQ0rGYKtBboQZxcZv1MKOIlfWZJPdyin5CzvqYCv+qziqtSnzoHElZiya4ouhSH
	 4IJ6Rsj+0K7yQS+Piv3m+MygiaP2Staz/ROqNNCX/x7T6A22ghai/ttA8zKkG5bNHd
	 hDb8jBUYZBLVh9sp/nTkh+c1SY6r+qKHToOpIBb8SxFnqpOz5tkVUNMV88paJTVhq3
	 268T/IIfW0xwxZcPJj7tm23oiQcifYYDviiNeDGpAIrlybef8fSpkTzzsF8yHQXcXr
	 YjJfU0X/1QrmXhhiJ82O8B8UwxlX7uGBCGm+0hKwemfmjsn+hT4UIZW3Z9Zc5oqnVe
	 4ACUm8IVXpt+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5EC81C3DA7D
	for <ddprobe@lists.linux.dev>; Thu,  5 Jan 2023 09:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167291108738.30164.5604644363778009505.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7e37a6b1ebcc2ba7895603a0dd86ce171e53aedbd14cdd342e1fabed8a28b24d
Date: Thu, 05 Jan 2023 09:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672911087
