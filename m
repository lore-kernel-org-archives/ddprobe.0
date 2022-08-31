Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AC3D72F2A
	for <ddprobe@lists.linux.dev>; Wed, 31 Aug 2022 17:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 66EF1C433B5
	for <ddprobe@lists.linux.dev>; Wed, 31 Aug 2022 17:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661965853;
	bh=7K9P2eAVs0TJoVSjXQwJODp9TwXTscvMuFdhpM01NFY=;
	h=To:Subject:From:Date:From;
	b=HMlKVaTY6dR1KLJxMcsfegisPo3BKghRa15mdAcIUo3qnPmJDE9VoHH9/HDhm0om2
	 dYq2oF5Uv4bK6c/t3rVm8wGCFfk+2H3xLUZ0zWmdA4rAxArB+j7XZoFp2O8vG3s+nf
	 gBlUxtdovhaXy7BrzmyuVWoy9QYKMy8mTofdTZzpwAjF+L723PIIhsWWCKkWjKjDuw
	 SAOUsmDIPtIuZjjIgdznT6sVm9Q4UCmVcKJz9olceMQconpo/Y1gxDbr83HSy1ZfX0
	 1vAzMqnJTiYe4+Rxlc4uocdtz60xN4hfkFMob52VuR8e1KmjzaCs24XbG0XcF/lzZH
	 +ZzfoPLkS9bCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4EA82ECAAD1
	for <ddprobe@lists.linux.dev>; Wed, 31 Aug 2022 17:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166196585331.6650.17111452688885872004.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 65bef8ed4342cc8980abe2bed40ced406283d9db6a7cf519d7ddcfebae2bdb80
Date: Wed, 31 Aug 2022 17:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661965853
