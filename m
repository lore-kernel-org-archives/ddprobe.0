Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5505310E3
	for <ddprobe@lists.linux.dev>; Wed, 29 Mar 2023 05:05:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 037F7C433D2
	for <ddprobe@lists.linux.dev>; Wed, 29 Mar 2023 05:05:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680066306;
	bh=XPPI1yOVe3eAUu40JdWq3a3pf1EjHuqH1w24V7fk5aM=;
	h=To:Subject:From:Date:From;
	b=MhpOjorcdSxXXlvvt6513LDgnZ69eIHEAnloltRGI7I7xfLfpT2QHcrq7jnNrf8OI
	 1nDmEollaaoIMVwY9mfjJkYSsjM4JSjpaQSf9sZtSBzLejOh8ZGNWuof7JzIQPRNxQ
	 EttE26e1JNmuDPyCvUIh1uiEpKg1Dz3Dr8BkVBwTI6Rtdu8cmCD+8GQtzidQxXJFyT
	 ejiHVmqkfzV4AJVVKac8PdFdQafsAdDuKzIUwlllHb3UpKNYjDLuW6G3EvdfmyOl/c
	 1aJiL1IS4PqIB9PH6qTW4Wakt52xMYG74ifU3ONjW2Gj0K/3GAOfpGK7POQ+GAoSTb
	 UWnD6F4i0UHRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CDD1CC74A5B
	for <ddprobe@lists.linux.dev>; Wed, 29 Mar 2023 05:05:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168006630582.8387.73890121794390290.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 387597c23d69111b6565414ed6578d350bfc8b7200a5b6fb84afe68ce0668eea
Date: Wed, 29 Mar 2023 05:05:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680066305
