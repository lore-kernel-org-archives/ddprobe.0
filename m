Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E0441C2F
	for <ddprobe@lists.linux.dev>; Sun, 26 Mar 2023 12:02:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0C137C433EF
	for <ddprobe@lists.linux.dev>; Sun, 26 Mar 2023 12:02:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679832126;
	bh=iMCDy2IsOejH/+SuUghSI6Yrk1GOezR4hSzQEeqex7c=;
	h=To:Subject:From:Date:From;
	b=jwNIhMAnn5as5k3Fnb1ctq9dW8aH/8GBfQ3Yv+bcq9caRtMxhw9GmuHYDVlih7rrE
	 uBOQ7GQB8aNEaKgi2rNYgg+SH7S4ljSFWEwSHzRORJnvasaNAEaQk/3mXehvwY0jwp
	 wA1Cdffmv8PJHJQvZaOo0l2eVeqkwSAb71QlVxu8yp/BdJlYbWRMj9vSBvjCF8cf4d
	 Z9rFUpzFpL5JfQKrYCi8XE2k4PFxjF1gQvSgiZkuBKSwGJwCFZyWGzoaZfLZdwAvyU
	 MDbMyqw2ul/GZnPDvFIbYo7Vztvp0UVtiyp0QatmH5SDt1EFkZtWQgaKwMt6p3fZ+V
	 Izw2uwJbNOhPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E3881C74A5B
	for <ddprobe@lists.linux.dev>; Sun, 26 Mar 2023 12:02:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167983212589.28545.8228536187819060012.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6391cfebd581496af2f2a03da5002e92e1ad4162286fa0f91b5379d3ce944c74
Date: Sun, 26 Mar 2023 12:02:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679832125
