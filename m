Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A09F2C9A
	for <ddprobe@lists.linux.dev>; Fri, 14 Apr 2023 16:23:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E2BD5C433EF
	for <ddprobe@lists.linux.dev>; Fri, 14 Apr 2023 16:23:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681489385;
	bh=B5sVy4iJBJDbvSOnuurPJVPveUWbN/lcpiEOHo8AaVc=;
	h=To:Subject:From:Date:From;
	b=iBQw2vt7dQCUOSuCEf3MqeBE3GWMOXbpT6OQLeNxWSv3AeXdB1pL5Cf3+iEcA82in
	 h3gySNezzyHgc/kH5OZiGb5/awtzah9PyUfpMbfKcQOWYPwwfZWy+o5Kxyyf0CKXQk
	 WhGWHF5TkjuRTtLm4eyWpARy96VlPrgFLAVUf0ZIFYFk6fnhPG9lysAJU4RV6L+IkP
	 P/C1cpWCz9mTmj5wyuGcWFxxvU7tLrnm+jBkQ9RIsfF2t53t5rx5KPHwZ4peiVQOLY
	 l6f585HlQqHIvx5XU5+mgjrMwEViSlb6gasOa/kupFwX1HYpXN8CsqaHicGcy3zURK
	 F5nCZdUE3f5eg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C970AC77B72
	for <ddprobe@lists.linux.dev>; Fri, 14 Apr 2023 16:23:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168148938581.8107.5358156411611140689.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c0d6cd60b98b47e2e10ff364f013717fcdea4afc16c59188b6202236d95c65a3
Date: Fri, 14 Apr 2023 16:23:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681489385
