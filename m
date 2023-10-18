Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 01D9863E
	for <ddprobe@lists.linux.dev>; Wed, 18 Oct 2023 06:07:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kt1Ui6SY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 5D876C433C7
	for <ddprobe@lists.linux.dev>; Wed, 18 Oct 2023 06:07:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697609233;
	bh=lNzJlA+PG4BqYhAK6yUBDhvFWVRuQf8LOQ1TeP6dfNE=;
	h=To:Subject:From:Date:From;
	b=kt1Ui6SYrSfUuxhq+Lh+KWN8EjmQGfi6uPBlelfA0pxTmsVnaqsv9XNIN7BZzNtxi
	 OlHMKNVbI0FADAKFDTzv8eI5hRgDUfI/nOFz4ByVT/LZWcior8e7QmGArLCLxp9Q3U
	 gDMPQcdrwKc91dR21sWLaPQR8gy+nxfOzsBFzkulz++4DtDIQIj+Jr272BtqXl0vUh
	 SAeBXlT6ITHn8T3blsWN3wjOblDFP/xT6jbN4HmNHKZtt6eyZvyjXSH3LHyCMzbsaO
	 fN2GJfsjqFeoddpm1qNeMAt97AM14y7D9+X7aBMmAeTOVvNC9mHvT98gUx9sqQVl4J
	 1SGueB/zxiJoQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0E7F6CDB482
	for <ddprobe@lists.linux.dev>; Wed, 18 Oct 2023 06:07:13 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169760923298.1898.6931098461283391304.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e23cb4b50b74cf92cabf0a1fbfc3b04362f2220fa0494b48a4f32fc42b84d76e
Date: Wed, 18 Oct 2023 06:07:12 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697609232
