Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC35E1876
	for <ddprobe@lists.linux.dev>; Sun,  9 Oct 2022 16:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7FAD5C433C1
	for <ddprobe@lists.linux.dev>; Sun,  9 Oct 2022 16:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665334253;
	bh=gn39n+dpM+CuQl0d0pNi0f4NU/fYBrh+LlQiZkIVoFA=;
	h=To:Subject:From:Date:From;
	b=fp9DZn9qHPp7MNYM25FSAdf/69NohBZf6Hrvs/stlr9MhG+hee5ZGIzn1qWRlCuUO
	 fxWTeTL92UC4Ymj0wlC2/E57hcxZoy51R3yrTN7B1X5oV95zzL137dcUe+QGO5WItY
	 irm8+d8Zi5V8ku2sZUuBsHx+XEWdqLnLamNUFDl83z4NfQ91VzBoKbObEuD0meCO0p
	 kYw83OrMQz7bcdQCIyFqi9uK3+Cdd/ZeEz348elOA5BjW9amupQVYxo3mATNAzfEL6
	 EAzoI4eQGsoF4AgYOl5tGLL5QDkMFngkDefYb7PLwx26vIdUlWhxK6EiQTMnf8fvY9
	 KFZEBWMPSGNLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5AAA0C433F5
	for <ddprobe@lists.linux.dev>; Sun,  9 Oct 2022 16:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166533425333.11473.17994524046191511867.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9b671810f7ab7573c949cab1c92c14286dd9816c4b8ae505e19103a288bbbd10
Date: Sun, 09 Oct 2022 16:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665334253
