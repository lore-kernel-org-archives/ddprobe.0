Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D3A68628
	for <ddprobe@lists.linux.dev>; Fri, 13 Jan 2023 04:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 858B2C433D2
	for <ddprobe@lists.linux.dev>; Fri, 13 Jan 2023 04:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673583087;
	bh=jFSoD54ceZa19l/rpt0OVSz9wlW096dtKK/1f+knK4w=;
	h=To:Subject:From:Date:From;
	b=m+DaTBY4MieqKNVqvDATwzcS1yD0MIHkVwk8yMax2Y0iQ3bAqKb2FFBjVRyN4wes+
	 D/RImiGeKrNPSBjrYG4HZG1vnHy0nQg8iutrgdDbHkU9TNJ3gzD04yQGx8+027NLT1
	 dl3iROiSikhZC1tam0rFVAIvqJfWBm7UQM0vMsjHg2EuLL8K6WukAwT/ajVc7iQ3Pj
	 CaH+NEs63fIpK6QtS7AjPWRt+WvILCUZC2UPuGL1v07GP93bKm3/bL7qcu2J7S+nj3
	 xOhgAxpUdp4QC7lPerQpIbc2q+4EILu+Rqq0O1h/BT18L3dlK95pzPSflhQHnSnuuf
	 Gc8OUiqC4xInw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6777DC54EBE
	for <ddprobe@lists.linux.dev>; Fri, 13 Jan 2023 04:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167358308741.16155.12077831926863632642.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c111095355479c79f3348507ec04b1ec3f3fdb85078f4f29f11addb144053ec
Date: Fri, 13 Jan 2023 04:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673583087
