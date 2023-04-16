Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64833A40
	for <ddprobe@lists.linux.dev>; Sun, 16 Apr 2023 01:35:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 05693C433D2
	for <ddprobe@lists.linux.dev>; Sun, 16 Apr 2023 01:35:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681608906;
	bh=4m0i//6ntzGysg5EWd2RwD/DskFb58Skm8QKY/smUqM=;
	h=To:Subject:From:Date:From;
	b=n7TLZjZNj7HXk11jvepUTnT3h1VLu6AFegLXOmCNdpBfjf1C9AaCPH34xHqVHBmN7
	 69MfZPsYCBKXY1We0BSg7rjZEL4K80OZyTDiuZIPMha8Rv9ocM3wT8nmFXJwMhBqxe
	 GRfy1WWPOIQc0cWHuijqqw43Sv8lvMMTAxYlK5pMtIJJDZqPx3CBRvxd9DyZQcsatI
	 d5qqVf1H0DVo/auljCuaqyxevq4Vjg9xWMBlk1baFZvoiMGdKsLj/CRFa+RW3fRjxl
	 /Uv+Zauy+U/GWcQz+pxFDxKc4KfUUsTsLivXd+j3KfIF0cHC5nTV1d7rhycM8D7Ief
	 TEJFBY9sv9vYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DB9A7C77B71
	for <ddprobe@lists.linux.dev>; Sun, 16 Apr 2023 01:35:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168160890584.18446.14889943204427250363.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec03fc1d35b88d1a2a9481c1436954b1db64b32918481b7738055131920a944d
Date: Sun, 16 Apr 2023 01:35:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681608905
