Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C3A26198
	for <ddprobe@lists.linux.dev>; Thu, 15 Dec 2022 10:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7AC35C433F2
	for <ddprobe@lists.linux.dev>; Thu, 15 Dec 2022 10:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671100287;
	bh=SzJs4xyg3+3P6ka1RzZs9yZwpsrpbtkQH9JT6Vu85h8=;
	h=To:Subject:From:Date:From;
	b=VUT1WrdzN1Mxmo9jGc0jk+WhRBhZHPbXyBlWtkeZJV5hoQJVJChPlRw6s9Kpnk9HG
	 900HNsL5J47tUDpkaCfA8X2zaPLSkbZdnUiplGCkZGzC7kGJbeUOcEhW36lABTBf2q
	 qaA56RhekoW8fZ9JuapZWdm5MBq5FQiZvLgOX1SFaLtSb2LAqJs6EX/UwUrSMj3Ae2
	 x4VGYrEyxOpvSMR6XLKKK5WYX41oHUJizJ3PfUX4t3QwuDbPA1VgD07XokS6ffy+ka
	 AsAuK86swsK+JO21MqhRORTzQ9RxvWJkhu3gLBBfcjS6/JkIvVcFFvAb01x4opBZhp
	 dnKPdMXIT+1xA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5EE32C4332F
	for <ddprobe@lists.linux.dev>; Thu, 15 Dec 2022 10:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167110028738.29822.15977327789694676492.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9af3561704ab86ceba7d0f2df5715a2ae69c14b44da911a535ee1c0c37a7fdf9
Date: Thu, 15 Dec 2022 10:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671100287
