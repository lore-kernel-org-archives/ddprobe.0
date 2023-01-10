Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D7380A92B
	for <ddprobe@lists.linux.dev>; Tue, 10 Jan 2023 18:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7FA91C433EF
	for <ddprobe@lists.linux.dev>; Tue, 10 Jan 2023 18:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673376087;
	bh=ThMNVNHR0vA2Mitqk+nE2N3OVjT0DwJxl7YD3R4zWKQ=;
	h=To:Subject:From:Date:From;
	b=FFw1nXzeqX8bV+9djrTN8RT+DNME8ezEETpE9Ps0mK0Jyc32BozWlJSYJT16MgCYr
	 haEeWCpbY0w7uxeGlWY3hQn1In1X9P5VCbZiJI8RH1qd4RadexhkLI0NWmAdjUmZc8
	 wS82ant8FnUCbbGQuscJNxIPBOv4dIqV47qo9hw7KWtk6r34/8vq0vs0OVo7OG0Z8Q
	 LaKvHBdDt7Fgyxlfj+suSvCdzP/dZs/b+Aj3E60dcyyD78aANzL7WdrNJBlM+uH6Cc
	 eVIS6ZkwVcw9bgpG8Cbm1pbcKRgCHVr9mAX7GQXvaAYzOm5NHHQs4+lsWPPYXeg/Y5
	 iJ5T/z1of1KtA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 647E0C54EBC
	for <ddprobe@lists.linux.dev>; Tue, 10 Jan 2023 18:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167337608740.5325.14871568513567693068.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c8c729f6b41f6ce1cc0656737c1b533168679c9fbdddd313ce25577e53686b10
Date: Tue, 10 Jan 2023 18:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673376087
