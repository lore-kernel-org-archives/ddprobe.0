Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB42915B5
	for <ddprobe@lists.linux.dev>; Sun,  1 Jan 2023 16:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 82D2DC433EF
	for <ddprobe@lists.linux.dev>; Sun,  1 Jan 2023 16:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672591287;
	bh=MsCyU1ZEckUjvavwOzkMQC4cC758LTo16mJbvWoPDYI=;
	h=To:Subject:From:Date:From;
	b=cLPusfqxkWVQ8ElMZ5T5LA5bLmZBBwynmuG9whJ8oaNLPyz8bbK1Ruf0o2SY8dadg
	 TYNgwve/21zXKHQErGRMhY2v+Vxm6MauWFq1B2MY3fvoEesqDp3HF8ZDhFA4ca82OW
	 o7rw1huNIe16VKUvdUb3vHt3LAL/JcoMok8hHrlygHHZMtRpPBPXAOrnf0oJ9k5LGF
	 PbhKWe65N3JoTjlh9QMGEjtn7JheeDsUlQkuf8TpS//I8w3Nw6+tMG1WEhVtWBZIxR
	 PGIFUj2bI9zMBiYimHnuCPY5YogEF0AeoSZoj+4rFe1C5RyZJQsn3fDRnytXHLG6N4
	 HXHusV08tyjvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 66E5CC4332F
	for <ddprobe@lists.linux.dev>; Sun,  1 Jan 2023 16:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167259128741.11714.11133388140879444250.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7dd16656cb56392855c342b40ca709114c929ecf52dab7c0435a467dce491915
Date: Sun, 01 Jan 2023 16:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672591287
