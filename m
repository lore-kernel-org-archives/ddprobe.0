Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 602F41117
	for <ddprobe@lists.linux.dev>; Sat, 17 Jun 2023 17:20:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D380DC433C0
	for <ddprobe@lists.linux.dev>; Sat, 17 Jun 2023 17:20:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687022408;
	bh=ILU4+BsnAG/RvbBKROw4F+ZAkzZxQeNDZ0V4GnfMiqg=;
	h=To:Subject:From:Date:From;
	b=uTjeeHwlvlS3uL/wsfdAkFAHgL6QR7YdKDzOYAFI0mNWAg6VhADAC1dsJexnFuQkM
	 PMYoLC/b29u5XrNNOaNWJ5/vcnXMKd3qJnSR/UlmYQAlNffwVXQMRLicD/asgS44IL
	 /6kOQ9CsXFVusL3iLZNuxzry0rwjsrrnQK+DPOmpRqnTugAd19R+7WHenYulgdb83P
	 ylSzVN9tEBAW213cRVPhEJxCMP9mpCoLaUAxePGMn2ogueX73HhxrIxU+pdGrQzvS1
	 KzS88jD+q9TWco8ugbrXxF7IGopR9kNx4F61h5jEunO/OE/PX2CFM7UGvc5jdiHQjd
	 CbUBLxaJ3ZYEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4D03EB64D9
	for <ddprobe@lists.linux.dev>; Sat, 17 Jun 2023 17:20:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168702240871.22851.13984714536753330140.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7478ed171cd3ac82915e6511cbf12619960e2c15e775c0ddf1309684e798cb46
Date: Sat, 17 Jun 2023 17:20:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687022408
