Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C7FCD7B
	for <ddprobe@lists.linux.dev>; Sat, 29 Oct 2022 01:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7183DC433B5
	for <ddprobe@lists.linux.dev>; Sat, 29 Oct 2022 01:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667006454;
	bh=CUM6rUaLNxJScrpBxnYjS28tGRt2J68j71SRca5uN10=;
	h=To:Subject:From:Date:From;
	b=GQ5DvkVQ61rivNEm5oCVRA/aSCLnZUdl3QZJy9CLdXQGHG6CMtlE8TCirKc77Adub
	 KAr2adfk7LPGKHGE8oxBlVHvQPkSobaC/xY760rLczT1pdSzBjL+wLr/3N7MdPaqkE
	 /mGYATsnZxPRnRRBlAeveMlqEo7EfBevxqRvqCuqZ+lgUESepKkxxZXoM3XlXPPwgF
	 7d+CZWct10b9bltW6Yv89dqCRDZnW/KOh9TrA/d4XbEVLzc56CoHeOivU1Vm2IaAUf
	 U7xz9uUGLvorDVcPvTJnib2qQi78fSuOdSaZAyU280kZq9nW/Q5cAP64dPe2zH62t0
	 LGUcl2RMrVYcw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 57139FA3741
	for <ddprobe@lists.linux.dev>; Sat, 29 Oct 2022 01:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166700645434.15581.15002503053236244845.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 95a48f2566daec2e4b9b6fa98f36cdce250ce3b2719f4ecfae7199869d16eb4b
Date: Sat, 29 Oct 2022 01:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667006454
