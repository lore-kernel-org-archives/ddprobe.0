Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31B3D6FA1
	for <ddprobe@lists.linux.dev>; Wed, 25 Jan 2023 18:13:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D592DC433EF
	for <ddprobe@lists.linux.dev>; Wed, 25 Jan 2023 18:13:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674670385;
	bh=v5C73UKScaKBJIbWBQ9N7NnjgfNpiQm70zDL1NKH+Wg=;
	h=To:Subject:From:Date:From;
	b=VPp3Fq7DEZ7R4fCxMtmmoJyR34mcBUrgav3Zg7s44n9ZxWy/eslxpcesR8lwplD0s
	 BIV/egM6YP8O2HBbYHAB74RDkfpnWzsJUstnarayPntkQvsMbU5Cv5gWE92Yfy+yUb
	 2QO+aQvF5E1kIRjUidbkFwzTlB3ZXeRwuaNXfwnBPjqPZeOxBurju81SrtuFRq+8KK
	 xbLJ2CpFMHPRiiXHJ/6Hdrath/No/a9w5FF7rz3Gkg2plcWN5nkcwQbOaztecmkDOf
	 GBwpAOWihVWipl3cgpBX3hdWcfm+XzhAW+xPoiczkHVrLZpwV4qUWF+Nka/B166Yfy
	 7ykuJQmeKem7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BCC22C54E94
	for <ddprobe@lists.linux.dev>; Wed, 25 Jan 2023 18:13:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167467038576.12613.16676472082640908681.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 364ce8331954bd1e05cbfafaffe4eaad12de40403cb69dfdc94c2a6621bcc6e9
Date: Wed, 25 Jan 2023 18:13:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674670385
