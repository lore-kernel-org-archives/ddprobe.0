Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B0E24437
	for <ddprobe@lists.linux.dev>; Tue, 25 Apr 2023 16:26:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 00941C433EF
	for <ddprobe@lists.linux.dev>; Tue, 25 Apr 2023 16:26:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682439966;
	bh=7L9uDUVrzv0YIp8HFNVcuJvfL5LBgpBbZ4LntftCICU=;
	h=To:Subject:From:Date:From;
	b=sVr2fEWEjlVPDUVE5HfJpfZ8vsqR6ejEjJarXtzl79JEPVFbEoK9srO9L15jsYCG1
	 bq2WDKljx6AUz5xBRBGKXeKdZ93XaMOEry1BPXMc2z7vyWAZqinZnfbwpcdWLZkPpR
	 /4hk/PEcE+WGp5+BWj+XaE+uZHrUSZYi3fEQv4fgHWAT8tJqXPKGumn2Pj7cUHJC4h
	 YTSKafQ3WH33IqKFoGLs3jiH5h8fReh0FEmFEAJj9eDY+IEIJ/mZJ4ivFpfY64xDC9
	 Io8x0DCnARV46c3A+PA+yTW7el7QX4R3fAiX/7UfVH1z8k3o1kIRaQmr83Cy2R+wem
	 RzmusAIZNz+AA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D664CC77B61
	for <ddprobe@lists.linux.dev>; Tue, 25 Apr 2023 16:26:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168243996586.5394.7904572656297477716.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b7566019dc74f3c4c2a4db806766a4af0f1645a315c4d7094b556e26007afb3b
Date: Tue, 25 Apr 2023 16:26:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682439965
