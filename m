Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B65252579
	for <ddprobe@lists.linux.dev>; Sun,  9 Oct 2022 19:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6CA00C433D6
	for <ddprobe@lists.linux.dev>; Sun,  9 Oct 2022 19:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665343253;
	bh=++PCV/vWxcmfm9DLeA7uUn8JtOGqE+0R5J8cWC0PPl8=;
	h=To:Subject:From:Date:From;
	b=HSej2ENWzn0/YXjKsu1KnJRBH+daPvevsBmqIEWdWAgZe11thU90DcZQjmiX+aQ46
	 /3QM4NtDzudYwME7n34MsmdVleOqbBLj5CyuhjisyhrrQ/Kaax4EGrx90AZTO+Zz6b
	 SlVhQHW3ZkPxccA72wdiZae3eBF7XrWqABHLvSXL9ZEhMGJbgE/SQm5Ne43BiTInIh
	 z1qAu/ne2Y0QVSq88Q11ZNguKRaof4jGFee3PPkNHXQ2uUmXDk0v7jpQ5N2VLv+0/x
	 xQIG4rAuMTRZ2aAMxh4kEGi3FN1hW4Zt1VGSISFtft45Z+wTMF5GtrjmtprDiIgSgh
	 2m6DAOKRK9ENA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5242CC433F5
	for <ddprobe@lists.linux.dev>; Sun,  9 Oct 2022 19:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166534325331.9889.8001430555714127829.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a7738b979e06e8632c6876215fa8b267f54390cc957f8d1e7855e059e78808d
Date: Sun, 09 Oct 2022 19:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665343253
