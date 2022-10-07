Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C11984C76
	for <ddprobe@lists.linux.dev>; Fri,  7 Oct 2022 18:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 76D38C433C1
	for <ddprobe@lists.linux.dev>; Fri,  7 Oct 2022 18:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665166853;
	bh=CqjCsr8bVkFps7XqGwvpLur91Q78SabNQ2GJe+qDcDg=;
	h=To:Subject:From:Date:From;
	b=p2piKfPpaZf6n2jyLKAskli/clzQW/XaqoQYgubD2Efev2sitS+zU5c5uuTaVeM+Q
	 3w92DIUA4SjN3zHmoPQCP5fCuyut2ysK1n8B2++5Q7sCL5tmMszRc7IORidLp6Obpx
	 Ko3P1B4pJ18KEZFgDiJd9wm+8OvwEpb4NaZUJQlOZYpbioZzNNAYEk3t6aWIGpOXWj
	 dIh9wAdnVT31kwF3vE9Ce7k6frTeNzkQ08k9Z/U60WARraBMmA3NsIKYUu3L/+OJp3
	 pWEGsyQ0obFgpVd1Mg2JSAvdYSVRKLhVoMAP+dYvxEckKZw2i1S4p+h4sa2WPqEbjI
	 bIFH2LR4ViCIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 57F39C433FE
	for <ddprobe@lists.linux.dev>; Fri,  7 Oct 2022 18:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166516685335.23901.6698342536006235014.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a5bf4a22ae61cc3d7a8c8a673c2029a0abd6a9c50a023af9e4cda0f944296c9
Date: Fri, 07 Oct 2022 18:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665166853
