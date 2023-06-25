Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 614C2EA4
	for <ddprobe@lists.linux.dev>; Sun, 25 Jun 2023 09:03:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7F6FC433C0
	for <ddprobe@lists.linux.dev>; Sun, 25 Jun 2023 09:03:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687683788;
	bh=DW4FUAkREtDTQKap9wPXRb6f4j2adgteFuKID7FH1I4=;
	h=To:Subject:From:Date:From;
	b=Ph0GF80uJrXL43oqw3/IG1qzrDD9hhu04+WOfSGBATLtjpXQYt2Vlf/klhT8xvqib
	 6DG9G7fw/0TmT/TsJ0ZZLR2xfcwc2yAlQOhwbWrlrW0uvu3gsG9U07qAoHDu1W22Lr
	 2teDe4SxU6vAkq5dKm0T/OK77hx/u+rorAJRs+FMBTwFTGu9zlSgHJ8MhLhEc+R9Yd
	 bUDMq3ZOIPIHno3kKpe9UEc2DK9DaqqOIOj449Mpzmf0d9D7WjwTMrllnNfZaqpx2p
	 w6CPE5znCslwFvKAh95wi07nvDpW2qgx85T+8PK8uS8eKigVUur4VQl69s7VIHCFD9
	 +ZWQlUdaNxR7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B515BEB64DC
	for <ddprobe@lists.linux.dev>; Sun, 25 Jun 2023 09:03:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168768378870.22518.4136000977145746715.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 76cbdae502aa23d5ee5eb07c6eaf428eae4b2a04e8e0e4a883f2ede4f7db82b7
Date: Sun, 25 Jun 2023 09:03:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687683788
