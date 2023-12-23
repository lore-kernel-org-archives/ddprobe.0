Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19494CA48
	for <ddprobe@lists.linux.dev>; Sat, 23 Dec 2023 10:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HBavMURl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 89A8DC433C8
	for <ddprobe@lists.linux.dev>; Sat, 23 Dec 2023 10:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703329096;
	bh=2LVo6AT6JL4uSrIx7TFSo90KIQ6EA+rXKOQ8s0GVVXA=;
	h=To:Subject:From:Date:From;
	b=HBavMURlOXt55XdeZPkPbFXa3Qmv158Hd639hA3+tMUFynldcg/4L+oLrci7rgg2G
	 U1ZLFUnQasbVr6Ep96Vqkyob+KBFj1YLnhFohsIXY3ubUO9J5sCSSz7VPuS3vmGB8o
	 lsfBV3RFs0fLQwhsp8K/wx0C1kzK8eg8LL7R4R2ugjtrRksd+DDwBh0ApfVBahrnQW
	 OSnpiHH2p7ZOldgfVo0ft9C0EM/+Ad6v4LOGlAhyd6SeCKH+CtKcQMXQpArA/u35/8
	 CXJxEZgRxi1rGDd+EU0UQ3ve1kc7w9bXVjixYu/UIOvAEfuOip8nVhHsTgunfTzShA
	 e+rAqxqPGqe7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 68406C3DA6E
	for <ddprobe@lists.linux.dev>; Sat, 23 Dec 2023 10:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170332909639.15073.6052533947096421046.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 151394355d5d61b7ec4a6ef5abdc379bc95f02a6fff36fbe310bb9997095e21f
Date: Sat, 23 Dec 2023 10:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1703329096
