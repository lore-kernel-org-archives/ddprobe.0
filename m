Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C53397B
	for <ddprobe@lists.linux.dev>; Fri, 21 Oct 2022 11:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6DB80C433D6
	for <ddprobe@lists.linux.dev>; Fri, 21 Oct 2022 11:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666351853;
	bh=y7Hie84LeoqldnhC6Q1Tqe7ftEMUkOuaSdHEgDTshj0=;
	h=To:Subject:From:Date:From;
	b=pebJhqnEWPAZ1dqQhxvJG1JciXrQHHUxKGXbpxZshcE4j1sMjLEp5Vtpbs/lLA/0T
	 jROEx54Hhfu7ZxRimHw2IYihsoyR4yPDDF8ORBOBhWJcoyzFJfQx2a2oL199dH26Zh
	 VdUrCNG+tO09m9tLQ9E56gnF1X7WlgvUdsm9DdRzhtpCdceNER0QrKT9TQZDUqs8Li
	 pWIObmABPyAcIB9kLPDUVwUDVP9uInsD6tjbijiL4g4MxkfFzIL5EYEBkAVu5CoPBd
	 4FKp9ZnEsFb+VRZig4H7k3EBY6k6MK+VGrPqaND0EEfvSJoomgaySydbAUR910A7J/
	 QvkSg8yIV9o+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52773C4332F
	for <ddprobe@lists.linux.dev>; Fri, 21 Oct 2022 11:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166635185333.346.2928567398611719341.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f3990eee12419291573eedaaa4babd9f4917dfef74867154350898d1d6d3e510
Date: Fri, 21 Oct 2022 11:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666351853
