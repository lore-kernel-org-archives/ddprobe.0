Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 302A17E
	for <ddprobe@lists.linux.dev>; Thu,  2 Feb 2023 03:36:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4584C433EF
	for <ddprobe@lists.linux.dev>; Thu,  2 Feb 2023 03:36:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675308965;
	bh=n0rVkkHE4GdtbwAWRJIJ9VS4Xhwt9W8nKhomaQapVZo=;
	h=To:Subject:From:Date:From;
	b=QZ0XdisdOe39HIFFB08IfPWgoc+SrIG3F/KeXsgNVwbFrTcI0gQ2iIwlVqx9TqVHD
	 JVyZ9kKK911BxZ1hBG6j6J+WSW5IhIp5o0nxVdhNtONfl6FpqW8lU+635bsfV2Wn7m
	 xtlsvbazIzS+KaVJwURB+dLA10Fp9H6pv1k/lyLhFc8tRoO0OkGpM9az/4BzkCCs2L
	 sxuN/kjLwnHr0jJHsKuZPWoSlfiRdwB9XDujDgDjlDLMzuU9lBBt2NxMmae0t6ZoO8
	 wM7mxrONdCjhxyyFHz/ASbecnCG9YvV/4ih4tQ7UlPT6s4x1oSrjsh1bjNnaO0/lre
	 A/E2jMGyK1ryA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8502C61DA4
	for <ddprobe@lists.linux.dev>; Thu,  2 Feb 2023 03:36:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167530896574.21240.11496820121524135033.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b01000ee2ede6f294ec1307e579097f155151b22e483d820ba44c37e84a8abb
Date: Thu, 02 Feb 2023 03:36:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1675308965
