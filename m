Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A20F711C86
	for <ddprobe@lists.linux.dev>; Sun, 25 Jun 2023 22:33:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EF1B5C433C0
	for <ddprobe@lists.linux.dev>; Sun, 25 Jun 2023 22:33:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687732389;
	bh=LHxt9ZcZ10Uf5UDY6pk4NQFw2EaCR4uXvUxXSvlZHaQ=;
	h=To:Subject:From:Date:From;
	b=YKDXyqEvPFJFwjHMHsV5ptV4EVAR4ZNA4YEWNNsfcdTUBr37vCUQ9zhcukaY4E9u8
	 qu+p3KvUPKopii0R5aK1mWnPc66BkdQOmRravkI+48BwuL/wNipfdaVCAIdSAFCtnl
	 yfl2mGc91oAf2wzSdzikHwu9LsziikSUUsIatPaxd/wr+RHlV13nMuW1tvVRRujhkL
	 1iS8xbBLg7juU61XZ6fzdrB2VzQfzp2qqa5SOe/vJoCnc+kkbWpN7AYdmOsQrPSEk8
	 SLWO+s/Tem2B5Mba3igq64qdyb96+ldUhWmF7nMocEM87Ioh9N/+OVsgYu5UZJ6o20
	 fffyIGg+EjwrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF760EB64DC
	for <ddprobe@lists.linux.dev>; Sun, 25 Jun 2023 22:33:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168773238874.403.16559576770612029846.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e5864569a0cc53cbb2483d51c1b036e4e5cc5a2d99c4e7d2640690a594d7cbb7
Date: Sun, 25 Jun 2023 22:33:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687732388
