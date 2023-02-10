Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3254C2F41
	for <ddprobe@lists.linux.dev>; Fri, 10 Feb 2023 23:04:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D304AC433EF
	for <ddprobe@lists.linux.dev>; Fri, 10 Feb 2023 23:04:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676070245;
	bh=fDrGmsxgJOdwXcOXzMUMAtykF7b37DpbXWVZTAjgkm0=;
	h=To:Subject:From:Date:From;
	b=WHXubaxmrye9yfanxit+xmSCg7L2qO4OLxEXQKGXms6iyklA1/wakAM/JvrtWQy8f
	 eLsvqtij/oV/3Sd9J/fC2+v0/1967MS9uFed4ES4Jpwe1W9hCHlrDAF5zcyAe4NfFg
	 8NPcATuF4HeKsFRyBRG9VPzRMtJRphKIhlbvc4J5kQA3EsbYEWPixATOJiUP5KAvUb
	 RQNghIqQ8MN6bwZ/MhFOj073VCBNk6NNpbKe04ryFY4veMf7FqXXki5qCh7uqGREKt
	 7oQwPBHVaWohHgXZFBhmlnsKCiL4LeOk1D8GOkKd+jOdAgMnf6cYXOonnaGK9IzlGc
	 iISFRazxo6HAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5B53C636D4
	for <ddprobe@lists.linux.dev>; Fri, 10 Feb 2023 23:04:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167607024573.7371.17817511016668027106.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d61594be61a5394588a3072f0c4e5128ea835d48eec724aaa0ee03945235029b
Date: Fri, 10 Feb 2023 23:04:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1676070245
