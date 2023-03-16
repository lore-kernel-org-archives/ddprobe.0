Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D9311382
	for <ddprobe@lists.linux.dev>; Thu, 16 Mar 2023 06:00:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0FA92C433D2
	for <ddprobe@lists.linux.dev>; Thu, 16 Mar 2023 06:00:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678946406;
	bh=960F7FZ0bbh4j5L2KvgF5yFxKlqn9mYDZd7g27tf33I=;
	h=To:Subject:From:Date:From;
	b=IPNq1Rc2u/tJNIG4Kv0sCcqxEazc58JnqNi8xJcWY+6eT7i+L2hkmtDBAj0VqdBK/
	 FWX1fbqAERhwCD4o4mwzwehPPaYfk/xNProKa3ebGrIvF82ovppHz6HHiruhc6UKww
	 CfNwtTy752TzfYWpKZvuObMgE3RLe4Pj4lsI4kYt4+UV5QzxSoMgbh6T98+IVsMwig
	 KjTmWa32n4aWhUGnFcWR331tG2b4EPuzOs2Bgc3yfrSGy2wB9uQTGgbVSBjPGjQE9b
	 3dWB94olciHZK0CvxGyMDjpV54RZtF32oPV29hIQrnX5YnHY7nO5JV85XqlzmJaKJ9
	 +fwuaQsavqI0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DC728C6FD1F
	for <ddprobe@lists.linux.dev>; Thu, 16 Mar 2023 06:00:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167894640581.29502.4037298961814000367.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a36ab347799640681bac0352e8e224fc5ac2a9f694740397ed75789f30f70216
Date: Thu, 16 Mar 2023 06:00:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678946405
