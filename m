Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A58F65A
	for <ddprobe@lists.linux.dev>; Sat, 18 Feb 2023 06:55:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EE312C433D2
	for <ddprobe@lists.linux.dev>; Sat, 18 Feb 2023 06:55:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676703306;
	bh=uGY2aFfec6eQso8T5a8gr08D1x5HGI48fqdUCHdpXlk=;
	h=To:Subject:From:Date:From;
	b=F7UMbOS7S9OUn1A9MlZgfMja02Y0eZfrtZma0Efh4u7AzKurXn2JmeodbLCmEiwwO
	 9qTjkEcHNr2dq37BotWefYnYQQZcW7Rd1KtD3ufPaVuKpjkIukbdv+ZzvdjckRY7Gb
	 Wd2aS+UZ1Y0GeGPkf4+eR1yh5PcbpWmI0clka4QAbwSAvjp0Z9hzBMHitmhPHbraYH
	 qTpFGaSJGeSiCiRIkE+7n2I2retp03of0xxAFDfelAkxK+ZU+drCZdUqir+lseWkGT
	 mDrsfaB/XRi+evdPET1uMEKXTmqhEMDf6VTGbL7ipBx9Bl0qvFzK/LgPZmiEBKe54U
	 EtKcpAAUC358w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C947FC61DA4
	for <ddprobe@lists.linux.dev>; Sat, 18 Feb 2023 06:55:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167670330581.10809.13262098795142558980.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 77e67c0e5f428a3710f94afb823fe24150481302ad9e0cc930b909c1342809c2
Date: Sat, 18 Feb 2023 06:55:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1676703305
