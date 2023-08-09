Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7AC1A1B7EA
	for <ddprobe@lists.linux.dev>; Wed,  9 Aug 2023 07:53:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB15FC433C7
	for <ddprobe@lists.linux.dev>; Wed,  9 Aug 2023 07:53:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691567588;
	bh=ES9iam3zjaPhN1taMxgdSvAq1slpG9Mww+er/TUqZxI=;
	h=To:Subject:From:Date:From;
	b=cBW+QKneFJxIj5WfYMK4sV5gZHapH9rwllAruqGATdu41MiojUqU53Zoin9v0zvH0
	 QJfcem1Ek44m90t5HAlW/E16e9qqydeq7mZaWsuUELo7wTCvc81UyzV4rgaga/eCq7
	 tSQljqv5gqabn8r6KcMgEsWi1PDuPGDjZDrztUlMRvqJaiPHfrXNN7Dr8Rh/M/+ERc
	 CzNnzRqEOeKvhTOuhkfBBTRgF/Xtz1kDHK1g874uYcw9W9C+q5UpuvtZjbyBZv/rKe
	 51izImuKyHQHfoUbRy8J+BA9ne+uKbEJ9wf1l4cM95GvHDxApTEPxXu5YrNzAU51Eu
	 BtWdyNcm/E0fg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF92EEB64DD
	for <ddprobe@lists.linux.dev>; Wed,  9 Aug 2023 07:53:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169156758871.27727.10897838879810296560.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3cb7c45adc898e9d96cca837396f1157beb5f6c82e2040d9b3e00cac0783ca7a
Date: Wed, 09 Aug 2023 07:53:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691567588
