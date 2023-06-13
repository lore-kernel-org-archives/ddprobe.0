Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A17B1361
	for <ddprobe@lists.linux.dev>; Tue, 13 Jun 2023 23:27:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1B11C433C0
	for <ddprobe@lists.linux.dev>; Tue, 13 Jun 2023 23:27:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686698828;
	bh=R/buL4du3c4dyABO5teNsWsxM6wnKpzwmGzFM3Ipuhk=;
	h=To:Subject:From:Date:From;
	b=bpwYxJqLF+7WekJJQmH73u4nSJNxXc+1MVPF4GLfveK1oqhYioi7sCRCAQvVY/jih
	 OMWPVqGk2PbI2jTn1G7qeT2AI0/OxXRB9FING7JgdKd56RbOQeviXcEEVeuj1teKIZ
	 X5eVrh+h4gtJFwZB+bwU6ssnfe4l9iCE1hh5EcesDsTUrsrC2O8i0XEF9NUTTwwoT9
	 iLhyJAtD3+XaPIop4cJ2J84APYL1nzdXUBzjWicozwza3BTr0U1AE+/Nd0Al8KP6uW
	 AU2qfBSaKyCNKq0CfZieKGPHyjlFmbLM5c5COByD5NfqRffymqmx+790JZgAv7ULX5
	 9cNafa8WS5t0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEC82EB64D7
	for <ddprobe@lists.linux.dev>; Tue, 13 Jun 2023 23:27:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168669882869.31321.16642110453649672772.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a814936d49b64c371768fa853cb5a9bc45d39420aff757336021f6f12d3bba93
Date: Tue, 13 Jun 2023 23:27:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686698828
