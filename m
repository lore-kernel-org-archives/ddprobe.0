Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B25C37165
	for <ddprobe@lists.linux.dev>; Thu,  5 Oct 2023 20:47:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RpxsgjPZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2280C433C7
	for <ddprobe@lists.linux.dev>; Thu,  5 Oct 2023 20:47:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696538828;
	bh=N2Q3oLEBEq/oPImORuzUXDEquaMLBUXim7+CbNjEwoU=;
	h=To:Subject:From:Date:From;
	b=RpxsgjPZDTNYTuDH+uOcjdwOWqzflxZAPe8G4lGeTBAok6RlvqC7zbqONXCQReZKt
	 KK7THZILXyimd+q59SY0InRz1OpaZr545HtbNMESW2CBMlEkd1SAUrbM64vl4l6eac
	 z56tPW6ZP5Wy2QFgfDtA/6avg+XNy6kAuN/m0ZplW9WB5aLhfAr1qa2enzEQtE6Lss
	 4iyDPlIs9UsNPtzOKWL7y89JP/4rOdg6m/jqmNTYPPOZJFqxDPCPVc1WvTFSK9aPqo
	 tnxntJjooCALgAKcnkLsTv4RnQHMKk4q0YDwlPdHOJka9KnKSiYb1CqHQM4STqYwQg
	 5AmP75KOZgMlw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4A21E9371D
	for <ddprobe@lists.linux.dev>; Thu,  5 Oct 2023 20:47:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169653882866.26929.8870190913135970046.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f11f4da82ffc2c3184f4693c05eef01642b083fb689f880faabedad538c4bbb8
Date: Thu, 05 Oct 2023 20:47:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696538828
