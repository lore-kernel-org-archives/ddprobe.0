Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5987716401
	for <ddprobe@lists.linux.dev>; Mon,  9 Oct 2023 11:17:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ktxdffik"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6172C433C8
	for <ddprobe@lists.linux.dev>; Mon,  9 Oct 2023 11:17:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696850228;
	bh=CwnPYbn1DJ5xFjlWggYcfLJFP+YnarbVPDONreO+yxk=;
	h=To:Subject:From:Date:From;
	b=ktxdffikcbpg63Y8sElvDZdp7cfXnOR85ToP/Ctx+t6Cg0jX+YbC2tGMawnf9iqfO
	 zbIuiP5U8/HOxezSn8ov91Lye2mvkgBvsDBEYP/v9TvaKbXj0VIkbqtPdZxIoLVfMm
	 oA08/ppzYbas71q3GVM/NcDliFnRbFbqOmuWl5z4vAEB8uApqSJXjV8txA2On9Oe8p
	 MthngD9uV6h5Vq+WvHKG45t02elj5ektQyDqNEFBPBp1R6IogU8v7GS0Bx5KhTHUf6
	 inHKsfXMZ1p/bYQfiO2YAf5lLr+17QNUaerp8hqakTwsNTi6NDCqStRxIjYY+mXIT2
	 4z9pfms765+eQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA408E95A8E
	for <ddprobe@lists.linux.dev>; Mon,  9 Oct 2023 11:17:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169685022868.514.14990925153959673242.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 22b85829296b2ddee89ca1649dd3e498f71804e6b87c02472dceb5829fbe1cec
Date: Mon, 09 Oct 2023 11:17:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696850228
