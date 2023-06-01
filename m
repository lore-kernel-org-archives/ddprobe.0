Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 622C823423
	for <ddprobe@lists.linux.dev>; Thu,  1 Jun 2023 13:06:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE680C433D2
	for <ddprobe@lists.linux.dev>; Thu,  1 Jun 2023 13:06:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685624765;
	bh=iyymJ1j9JprmTUfmryOXwczRdwXKVvDMvGqIAVOpZT0=;
	h=To:Subject:From:Date:From;
	b=KQltSv7hoP1XLF1ZcZuJkScjevaGLfgAcy8/sua03VMc/+vfInR34P8xHzr+JAKbw
	 Zd68/5HtLPVX7KG2a7NSwXAEQ5JlXE9quTidaBNfVHXZDd51uek3MHlNpaXcvFogBm
	 8SKlJGvNmLHHi3ufl/Ux/IvGvBmgzAHlJAO4nRVUdNsHHc7uw7svS21j/Df7nC5l4s
	 qPfNik7zpTZcuayeMnTEg3Rt/W2SMIUhXyiuLFz3S+1Z46kK3E15rpKKYqM+7ar+02
	 CIq308PQ77vDd1frtiGDuxS+I3RriHPahaNeHkxBGSp0rux7rfchN/bQ2uPGqM7Lhd
	 myWQEvU+eY0nA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C48E3C77B7E
	for <ddprobe@lists.linux.dev>; Thu,  1 Jun 2023 13:06:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168562476578.21394.5211542761555047316.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f73068d93104abbc93bd5da4527828286c6a65864f8fafb9741ebd52fa123399
Date: Thu, 01 Jun 2023 13:06:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1685624765
