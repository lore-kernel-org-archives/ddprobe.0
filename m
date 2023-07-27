Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 65FFAED5
	for <ddprobe@lists.linux.dev>; Thu, 27 Jul 2023 04:42:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7256C433C8
	for <ddprobe@lists.linux.dev>; Thu, 27 Jul 2023 04:42:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690432928;
	bh=ci1Mv8Gq8ZcgD3vDjrsvIRA9BhAAMK7nHry4H4eZCoY=;
	h=To:Subject:From:Date:From;
	b=VdpTEhaPcT+eSPv4iQ7tJeQvmugO+bM8XrpKWnpqNHWGWlvOdRYI1jIrpZpsEqZG6
	 jIg9o0Gu+iniBPQtdF4Ug2cXrD+wJ5gjj7GwepUAeOmMX20ikz/6uQKFySgW5GpF6p
	 08ILHBrfAIqlHqKC4+iVxLaKhB9Jpw4SQAyp2qjnYwFvqoWmKwdU+NdGXmJQrnI9Fb
	 zjAXqfb8Y2/ZueyP3QlIrhe5XVq2rKCtw/QU5yBSSuUb+ufvjwbOZMoPRMIkckghk3
	 gA17zUmRMWujb0maTlbmUO/45evu02Jgs+53XP0o+rWuykUt6OtS+HrouTOlp9s33x
	 kNzE0wq1YQyLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BADF5EB64DD
	for <ddprobe@lists.linux.dev>; Thu, 27 Jul 2023 04:42:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169043292875.10864.5177295561359751628.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 90f130800dccc6e93f09732d28fdfe1a1b3b23d26a1bddd2bb7dbdf2e8875a04
Date: Thu, 27 Jul 2023 04:42:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690432928
