Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C4CE17E
	for <ddprobe@lists.linux.dev>; Fri, 21 Oct 2022 10:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 759B6C433D7
	for <ddprobe@lists.linux.dev>; Fri, 21 Oct 2022 10:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666346453;
	bh=F1kj4/Fv5T7d5bt8ZRl/11cyXeXPp5xgyGlry8i/9kA=;
	h=To:Subject:From:Date:From;
	b=JvkQAVxqYXlWAz66YPuGKDwkN01lhi7FVKbnE0ZWBj5yl/b3Ccpx//uBR1DasV3qk
	 B90UrlAci6MnsHjpsW7zueTW1VpvFcIAg7UfDjG75iO8d+z5WbKnd+P1EWYz/DUTQk
	 i9DNShWSqRcH6LTaj82W7tKn3sfOpQpBpsLNvrBcVD6dq2iUPIjNPTeAMTYzQFXlm0
	 s0lm3O+7Go3Pi0ObKk52DjPenHktqsokmqzKFmKk+smE5k+sX9h7WDrLj7J2QiR0SA
	 3rZiBsxBqv0xhjOZmpD1zIa/qEXd65x3n87JoU4P4rWvwvOK4oDFxONWqe/1R3PqZ9
	 kEg9bJIQB8jIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56537C4332F
	for <ddprobe@lists.linux.dev>; Fri, 21 Oct 2022 10:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166634645334.25084.6130791172580556723.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d2e68f02ac280df45d32c6182fb855f4d2f682f53eb5b948a24fc47e24410a30
Date: Fri, 21 Oct 2022 10:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666346453
