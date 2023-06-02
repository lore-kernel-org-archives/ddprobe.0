Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57D5A17759
	for <ddprobe@lists.linux.dev>; Fri,  2 Jun 2023 19:38:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8B25C433EF
	for <ddprobe@lists.linux.dev>; Fri,  2 Jun 2023 19:38:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685734685;
	bh=ruKLCA9LDqb50DowziMJn0l+qrVY5xpF/QJc3gS6wcM=;
	h=To:Subject:From:Date:From;
	b=Q6CclsmEPBR8QtaPLj1RVbgBVN41CKTSHUxlN7j6ZFYrG7JNZC6lsRi8VhU1VtGtI
	 U1moQo5p+QzJm8eR9lrGf+OmpSQSDG6aoMCApg2i5M5EyMhLWqaedCkCHolyDYVkHY
	 5h4o9Uyc0og+AJbv//V61WxC+RAQEZuO9UA0rozDApw9tZu3yo9DCOm/NOImxpZG26
	 1qo3brls9KHStWWY+m1UZkrE/NHvHruDFJ6pC8aPaZscmfj1g4/ieFcO67sVGcSZ3b
	 XuMDRQrDjO7rYwO23C/1ulgMynuzzWNkkCTDnSSaQvmGQxv482oaWMxw7qs/L+o8l4
	 sZ1veph/0qe5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4A76C7EE24
	for <ddprobe@lists.linux.dev>; Fri,  2 Jun 2023 19:38:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168573468573.23393.11052557054544359388.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 26663716340c940281796c77ac721d389429fe92b3e2019506b7b039938d7d7c
Date: Fri, 02 Jun 2023 19:38:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1685734685
