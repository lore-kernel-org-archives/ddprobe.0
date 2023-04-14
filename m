Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 77A51630
	for <ddprobe@lists.linux.dev>; Fri, 14 Apr 2023 23:23:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0F57DC433EF
	for <ddprobe@lists.linux.dev>; Fri, 14 Apr 2023 23:23:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681514586;
	bh=xjNGQgMpUbTOLyN/lKVZ7yd2Qxpr/JbMccRkfYG/mIY=;
	h=To:Subject:From:Date:From;
	b=cztjpy3RItyh3k9w0CprSrRIUDEYfiNIjexP8HID6vg4ikr2KucpmdElxoQco7Tjn
	 /kw/fNIqpJmDwf4x+sYbFaDPUNpG6xZioblnsTullmLpCCOPPT4DZHqhGMNTDGJSXH
	 yb2wHP9USt+imawzCtOZrrA6flsD80dzF6D3i61Lta9MDy4bFdH/jlJX96/dbnQ8HJ
	 8eHBHqJc7XvPRqjuAmzn/GpqWy+LlTWzD5s+RA8xTGWPdEk3k154oTiTQcGmwtcjTp
	 tKxWd4klIvH7kDM/0ljCR7ZL6rkLbUmZ+pPMfFlaYyGsCDuH2fkEiGDNn8d2EAe5pp
	 B5xMAJrWj3cFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E7765C77B71
	for <ddprobe@lists.linux.dev>; Fri, 14 Apr 2023 23:23:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168151458590.15231.657541671960185958.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 13583da7646122a36204727a52300fc1bf53707bee279a1ad9ec4819a7e18865
Date: Fri, 14 Apr 2023 23:23:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681514585
