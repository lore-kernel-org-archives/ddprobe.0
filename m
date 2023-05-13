Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F360A44
	for <ddprobe@lists.linux.dev>; Sat, 13 May 2023 02:56:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E90A4C433EF
	for <ddprobe@lists.linux.dev>; Sat, 13 May 2023 02:56:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683946565;
	bh=ySFC78EIaHm5KX4wlWMmV30wbwfkEaZbOyiUgpoYzN0=;
	h=To:Subject:From:Date:From;
	b=Uu9UiIJfha0gEvWAPMlI/0viiuC/oPRNDer0Y26P3aVkbzGwtIHNT6z+X2QXFPPJb
	 jtK4c7UqaUvStG2UHs7MuheKYoG08lbaoT+AAU18KkK/0zXERJEvRdWZ9BOilnRlMW
	 kfzwuM7JyXWfluQ7vzk6yH9VJN3LDdQOwqv08iP4l8YRKwnor25LtrjrbHpyxdPkeo
	 semUO5Tm8vdwHBVQm/sfLWjjfdRtPpHLy2EQ/IY0Ox6YYpcsHNCMIjg6T4c34s4VsR
	 bkF0Cyhn0p45Vb0+0GrjybD6mwdJNUn9GQfYbaHHSlpDfFOUx56X0Z4evVbWC/26if
	 JijJHGU6kxO3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1C9CC77B7F
	for <ddprobe@lists.linux.dev>; Sat, 13 May 2023 02:56:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168394656575.27340.14418992864383430527.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 57716ea2e862255ea0a4d53ac639676304af2a1cd39897afa12fd3381f0cc22a
Date: Sat, 13 May 2023 02:56:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683946565
