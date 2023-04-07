Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63DD3A46
	for <ddprobe@lists.linux.dev>; Fri,  7 Apr 2023 01:08:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EEB9CC433D2
	for <ddprobe@lists.linux.dev>; Fri,  7 Apr 2023 01:08:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680829686;
	bh=YT+r7sEZqXdrhigHcF63Opg73/aJMak/jt/qFbSoKvQ=;
	h=To:Subject:From:Date:From;
	b=Fv71ubaehCsufjbKUqa/hLgOl5cbIk7zxeU2nHWd7HJAqsFvG1UwDEleu//ADk4ve
	 gLuggtQNo+lfefkgthl7DU+X/gIboskEY/I6kBRTCvhPRqUt4jyY1npvH3cLYhb23X
	 uCOp1uVsQROmFTu/U2Et47wl1BLp1gKA21iGjLOPKOHGm7GIxzFNKFwWgwdr/avYZw
	 GN/8NqpSduoAWTQQo6rrG24OulVuop8GfBTNHpvDwQE1c6dvgjWphRKHL8Bt5mReak
	 j2zW9qTQybaaz7pNH0j8Ec8PidSBTJYtEhuYGkrPR82ArS7TFii4s+fMu27YAr4Qvf
	 49LHk4Dxq2bwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C96C4C761A6
	for <ddprobe@lists.linux.dev>; Fri,  7 Apr 2023 01:08:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168082968581.9138.1555262864970566080.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9cb433ff20b4f35b47f70b55ba9d9d453b7ff5b669b3cca278bce7aceb1fe72d
Date: Fri, 07 Apr 2023 01:08:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680829685
