Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C347F1866
	for <ddprobe@lists.linux.dev>; Fri,  2 Dec 2022 08:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6C6E6C433D6
	for <ddprobe@lists.linux.dev>; Fri,  2 Dec 2022 08:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669970454;
	bh=Wcy59oxmnLa/enioCn2PjCPA3nNfUwRBYg55T6X/pfI=;
	h=To:Subject:From:Date:From;
	b=CJigd8tiNtRNzPHbSwTIn95l4CAUDuxvfA0CGlbRVikOhU5PpLPsx/vJv8IKzIW9R
	 Lbzz/1JV8m4pt8V6zmBtESmYr9qRbrePevyIKLxmc1tvD87fhBoEo7ptJajQArinxX
	 749XFts6RmZANWZpD9XhfFzYBn3U0ZOCEe2OlMV5cyYkwiR4C/OlUMEWtmf37TwF8W
	 Xgd9BENlxdzYUW5ltF1U9FemwDBrHXWhOqjjE8gjoVuzdu5CzD0032X1TS5cBnIv4A
	 /QpOGBHb2YiRDDpM+p1KjdeCdsomcNUdbFHC5F1BZmdwFMJBPQdmrPJDtoUnDhfWCt
	 ZsvUfjUJpRJHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4FFFFC47088
	for <ddprobe@lists.linux.dev>; Fri,  2 Dec 2022 08:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166997045431.28409.4002621262649391890.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4c6cc0c93b6fc0ca3d2c0e876f00cfcb852b77dcf8115320aa5f2081e7845824
Date: Fri, 02 Dec 2022 08:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669970454
