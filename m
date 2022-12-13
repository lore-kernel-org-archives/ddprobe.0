Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CEE867B
	for <ddprobe@lists.linux.dev>; Tue, 13 Dec 2022 05:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 73A9BC433EF
	for <ddprobe@lists.linux.dev>; Tue, 13 Dec 2022 05:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670907687;
	bh=QIUeWz9fd7lPV+WpibAR5IJ6i6Iui6kLkPOPuL6KPYg=;
	h=To:Subject:From:Date:From;
	b=rI6oLY4f9gdj32TgoU+W32+C7uAoSRtkmLMzs8NOr59+2hM7bkJdW96/UbqEE6OY1
	 HOTFkODJWo3wAcW2KjF9PCOnWTAl6Yap2acFPbeXos1kL6AVyX7+9OLab0peeUo5rC
	 NYK5EG6qcgxmVKzmnZ8SqIfQ8jRQEGhIkkWhRpJYil0NimLLgQ+rxvYeQyMXXrQIZU
	 3T3wnM3g2xxZasXVPkiCon8T1EjU77T3NSUEYqdvJvVvWRYEXxr1Tac3fbgI/BTTGj
	 4GIO4SieP320Ao0gQJUzA/x7inWYsQiIYaRS747QES9fuc2/8XxHSotlWzohd7sb28
	 +fmNNCMl3xvsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5EA26C4332F
	for <ddprobe@lists.linux.dev>; Tue, 13 Dec 2022 05:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167090768738.27013.9356796629998566018.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2e0a395d30626bc15969143c84e0518cf0d36edea676103cd3bcb6895bb38c72
Date: Tue, 13 Dec 2022 05:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670907687
