Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CCE9C17C2
	for <ddprobe@lists.linux.dev>; Mon, 29 Aug 2022 01:40:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 72E0DC433D6
	for <ddprobe@lists.linux.dev>; Mon, 29 Aug 2022 01:40:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661737252;
	bh=0ea7o35/4xXvlNgO+PluB5vdszI5Kt6LT0w4VG5JLDE=;
	h=To:Subject:From:Date:From;
	b=SxLM9ojNHiOC2RehstPqe3ouG34s0zQT15YlG6CwYpAA5eG4HjbxZPblEqWFg/wDz
	 uEhH8IgaJyIkODMMf0L586Z5JSVhoDeVBd6Hhr9HJrbbxU799F2VYiOH9zy95wV8x+
	 oDlZYZBDoqdjcbFm7kjWv4e/uAzwYGlF9kvRDqtbRPvj3LncVGcTtPJLKvdr7a89Hd
	 /vf55+SW+bWbLC0S0MEPVFcfrevxI+gQ0oO9Rx9Lhr7VxQGcFLKQ9tapoDdcqt3yEp
	 rV74/3YEncBSP6iLFz7rMGgWNcSboUcN+aA72q1atakeCD8TtnU7iI2trGO+nB95Le
	 Ojt+bA6BUbZsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 584D6ECAAA2
	for <ddprobe@lists.linux.dev>; Mon, 29 Aug 2022 01:40:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166173725235.29685.17597985530860383345.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 83604eb0c608ae451e5de1b98ac2cc354c10cb5698420bde57ef8a33f58d6a4e
Date: Mon, 29 Aug 2022 01:40:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661737252
