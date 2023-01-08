Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D9C611FAF
	for <ddprobe@lists.linux.dev>; Sun,  8 Jan 2023 09:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7AA65C433EF
	for <ddprobe@lists.linux.dev>; Sun,  8 Jan 2023 09:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673169687;
	bh=jNk9k0ANjEySd18b/mEaFDl4M+SV2GggNBJ/gAoAyrk=;
	h=To:Subject:From:Date:From;
	b=j8G/gF/0hKtFfHfg5pJqE9fNmNR1Fk2jM0Ha1u8DIIf/il4Yka6xnALEMBz9gMcjq
	 VO1m9D1zyzin2MET6InmYyYwMyseEZVBxoIWFf8tm/gytHgW+Lu2jIQUgMh6sH+YeY
	 SvWuiwjwjjlwx/qKfhrQPHNrmnmA9RNmMXJbi/5aOb9QY5OTcMUexbMQ0rQlRtItsb
	 xdKKBOUPu9vJ3Wm/ZmM1BZf5nOq6WVbKsGzOLbMF6IrCHnR9CCWwDQbngg/HBpHiOC
	 4H+pHGyBUE6JvLhH5DPYNioEFw8e8dIKhJv8cxh4bsnUD09UIFz0/sXzrwBL0asyPh
	 DflG0AqctmGLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E289C53210
	for <ddprobe@lists.linux.dev>; Sun,  8 Jan 2023 09:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167316968737.20927.9262662913913679900.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f62808eac95bcb9caeb07c14f8a3af869c2c53ba61e95f5c2c40bc0edf4ff3c5
Date: Sun, 08 Jan 2023 09:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673169687
