Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45FE6156C7
	for <ddprobe@lists.linux.dev>; Fri, 30 Jun 2023 13:33:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE7DCC433C8
	for <ddprobe@lists.linux.dev>; Fri, 30 Jun 2023 13:33:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688131988;
	bh=AWhnp7oeJTOHP+diaWRIdtmVbS8pi0iRr1lUK4tWT9U=;
	h=To:Subject:From:Date:From;
	b=EoGg5nGBw3byQYfM3dm0gQCodflNu98glMn0q4Di4MUCkRa1CFTg3Op66HEiUF2gV
	 qV8KaASs0GTq9tO+9SHHPQGYXywLaXmdUFYPCo7q+HzJAyzlfXV4Iim9ie7QS79lvb
	 ociASINve3qn0LPLwgZcXghawzHW3/G58vhm8uNOWWE4vHUpd3HuLVnoi0j0y8KBLu
	 cjAVCAvYhKAKv1DNtpXWXgttNQfKoPLWygjQSVgg7WmwFFhFmId+a7tlTAxz2udWz9
	 +b5lVcqadCGWjAsAE0gnqo5v+l/Ksm6YgfYbZuCpvaWapHOTJBvzfw2w2XI/a4OsS6
	 rV7QwctawbS5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3C32EB64DC
	for <ddprobe@lists.linux.dev>; Fri, 30 Jun 2023 13:33:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168813198866.4273.18163626270790553011.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8ac9a5738ebdeed6633800462565f4fba7a910f166a879766f1656b94ee64bf0
Date: Fri, 30 Jun 2023 13:33:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688131988
