Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C51424413
	for <ddprobe@lists.linux.dev>; Sat, 27 Aug 2022 16:00:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6C882C433C1
	for <ddprobe@lists.linux.dev>; Sat, 27 Aug 2022 16:00:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661616052;
	bh=ulxwB/Z3SQHsIJ7GiL8j+3wIfrtxaiHNJrEgubgI6eE=;
	h=To:Subject:From:Date:From;
	b=IiSzjReGx8bgVostPTQlyIPipX9RDry2IzIUKI6wvK13Q8VCsYBJWfW6X3uLhrEQh
	 nIHGWWKaNEF3VGZ0DXSByPIfZR7o0pWRvqXmxohhadvXvn9G6GInSSh+ioqpe5Qsce
	 imuzJVRrJxs6ZnjzVLY4/UroiKvIO98+pptHAubxZfJYyzf5otet6sGNxnPIfvOMjI
	 FNecHmyPVbZQ8a0/++V2ZQimeYHP476aTy5KV8WPwTsh4tC7bsAtFn8crMeRJlTBL2
	 K97HM1mKYoEeun4XNSdz9uYkAxvv8eHGvqTWVO9D3/3d/mDFJZiAXnJPBof+9XInkD
	 fe20ux+bfvzow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53787C0502A
	for <ddprobe@lists.linux.dev>; Sat, 27 Aug 2022 16:00:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166161605233.17321.5030840193567647059.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 96a855fee140da916d0974be57fc74cc09c1240b1c0b0092688b99e9b34d8056
Date: Sat, 27 Aug 2022 16:00:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661616052
