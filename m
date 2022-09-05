Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C059D7E
	for <ddprobe@lists.linux.dev>; Mon,  5 Sep 2022 03:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6C61BC433D7
	for <ddprobe@lists.linux.dev>; Mon,  5 Sep 2022 03:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662347453;
	bh=F8Udh2jxN+HByyFb8cImbYr1lfUFwozFJu5Hcw23Ctk=;
	h=To:Subject:From:Date:From;
	b=NuXJcggDh14ZGnIcrFY1WzIbOmojQm6BQu5m0ibC7xxlmbLIyuTLc38TS4OQIpzwv
	 Om8NypQAKDnveNSUAAjKV/07zS3ZkuUh7N/RZH/DNj+sRJ8PCGSvYGNHcSoybhyX0j
	 Ivy2qKxazE8yry60SpDUmctvEEAMFi0OytdWNDHGlENapJzA/cJgo+3Z9KzyaFTQJq
	 cmmlBq+/esd2BZT/fdMDmKIx7Ll7oWcMo6UGSjw4t2HloNPTaSyac1Jvg28pY0QrNE
	 WTgAoYLcK4NtHbrCla6kivYbSEfFuF/HUchUTWdD6JhBDG3d1IIR/lr639p3+9UQm+
	 4sTb6SGe9LL1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5049DECAAD5
	for <ddprobe@lists.linux.dev>; Mon,  5 Sep 2022 03:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166234745332.20762.12422406575214538785.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9b212fb071249d902d2ccc7d7875a6c2bf6416b46f8ca26142d12436ee66c245
Date: Mon, 05 Sep 2022 03:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662347453
