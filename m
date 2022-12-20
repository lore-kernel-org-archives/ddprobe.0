Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D23818F63
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 20:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 76360C433EF
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 20:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671567687;
	bh=nV5oNRRL6hr4e3Mk6ioQ6xq56+2h4hb2ef+3GX1IcIM=;
	h=To:Subject:From:Date:From;
	b=Xg7fLBoe3lHs9RsS3wJe0ooKzpeqsKt16PzIIBRIPtmV+D1mzt5wMZWp3OyOpAerR
	 HGCYl2M77U2x3IffW+HWmam/igTZmKBR/P4HJUXd03lyxXecqjptt0fIuMWlscp4LN
	 hiYLKly4EZxmi1xb5L6nd/YuHAiJKNbqSqeP62zSFo2a3nc3Aw9NdzWCbeIeRqMBUp
	 RDlbnN9E8hHNe2zVuh7pQCSMpwzceRXHKaZbuH7wI2JFrrP6QO+UErgdHvL8NtXIDq
	 vewy+EApbp9yMP/eg/2sV9oCssSW+ON/RPx8iavC74QuktDrSiLx6UyZqOfrHfwq/n
	 BlcokNIKekrWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F0A3C4332F
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 20:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167156768738.6860.7722960706026602598.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 996e078e780e843668b45b9cd910e7c65a190a1b123a042dd4b58485a5ebdb73
Date: Tue, 20 Dec 2022 20:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671567687
