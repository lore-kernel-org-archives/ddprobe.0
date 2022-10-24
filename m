Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C2BEB3D6B
	for <ddprobe@lists.linux.dev>; Mon, 24 Oct 2022 16:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 72565C433D6
	for <ddprobe@lists.linux.dev>; Mon, 24 Oct 2022 16:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666628453;
	bh=H6UfSFr3I8cR9JUWJf/jmT3l0VaAU0jpJHSkKZK0flg=;
	h=To:Subject:From:Date:From;
	b=KjEDvSgYgb/2cI19ZEOIRhuT4xJ5ttuFJHpyYsG0jXa8J/yd5ILppwa+lkyxg3lTv
	 QJxBviSv4Wa8vTPYq4KoTQjz+5xWd7+aKbQpvvxTDnbJvxCtnhx1iXmhukYtqZV1e2
	 9rDIx2S0ehIrW/m/eXmV1vYkKbmpoCBuGAnQDLdoXHPJeY+tFaysKKLdUwGQFlgkoI
	 Hzwz40cs0tG1IP8nkKZ0WVofXeBLcukYTCjSA2xZAzwbLSFsppOTplBKTMUzuX/SdJ
	 p1HvNlYuHdzLjj4AzwS3V2cNUOmLHlgzdQmE/1QsV83yxQbRbGRrh+E0OU0vVJ7TTl
	 fObp7FlCUGZFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 58B83C38A2D
	for <ddprobe@lists.linux.dev>; Mon, 24 Oct 2022 16:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166662845335.3700.18019302267214974787.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 027a19076db507b9dec8d523ba51f70596603081d981a9fbf29cc70ec0d58510
Date: Mon, 24 Oct 2022 16:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666628453
