Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6BAA5379
	for <ddprobe@lists.linux.dev>; Tue,  5 Sep 2023 06:44:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3673C433C8
	for <ddprobe@lists.linux.dev>; Tue,  5 Sep 2023 06:44:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693896248;
	bh=hnMCMZ/iL7Qn4G3mzhH63iClEBBrRBSWgO8yySzaLkM=;
	h=To:Subject:From:Date:From;
	b=hu5ZKpJJxK8gaFO0qZuzNtIRuhGd6BGOwQFeR8W3G0OfUMxDz7T+SwmoJkY8a4LF8
	 gL5ibT9Ad0LQ9TjAT0Uv7k+JzQmQ/K4DZd0EDg0xzOAXqflI1rxKg+QH52cmw8xrOc
	 rvDkjlRYRgAK3cif0uk3I+Ramk09TF7ICzFrnYPkcpgTj0jz9GtrAvZjnb400Fhi/h
	 KE+kooAgP4Ar4vs38H3BPNUYIETyt0RLlbCxPxgSJ8WG8swasGxbavthnHYho2J/qA
	 SoDge3X+V3I2xmdZqaa1Zh5nhLy/2XFjI7JOMU+XGUALb9VCV+ZQvbPxcdMsoSRlaW
	 AuJ6K2rJbQyOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6DD8C83F2C
	for <ddprobe@lists.linux.dev>; Tue,  5 Sep 2023 06:44:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169389624867.25522.14767239372503686904.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9a43cea5f849ebc6605fa92d5ae1c91dc6099e3902d9aec507780da4604ffa8f
Date: Tue, 05 Sep 2023 06:44:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693896248
