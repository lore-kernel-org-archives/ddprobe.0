Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50EE2101D1
	for <ddprobe@lists.linux.dev>; Sat, 14 Oct 2023 12:07:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sRfI5swj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2C43C433C7
	for <ddprobe@lists.linux.dev>; Sat, 14 Oct 2023 12:07:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697285228;
	bh=KXIYyPCAjj5ekai7fxGnO2LNm4YrIkMP1owkjhY/SQU=;
	h=To:Subject:From:Date:From;
	b=sRfI5swjMSQy4nHjM/LGigA9WtPX8rQIZQZ7PXgoJDQrEto32iV7OTa9y0BdJGG+H
	 ycLPLuHg4rwP0hzbWwChbnEtjtU401wr3jcH5CeGGWGSK2GsVZMYW6X7JxIQaIZ477
	 a/dwEwehyIRC9bxm5UGU1fvmrSgYT2+dEXMKtmmjt2bu0V6K/CS0R7gHK1aVjTTeYW
	 9YxCcj+XFn9iZBnDR5qE+NpgVOKkKcqqj+ty81L8FTXeQ/unXaZ8JaPG5DBcdn3qxL
	 voDVQbUSjUXY7p5kXsUmpK6DlLqCtdIHhkgO/o/GUR7T6AW6XpNRtkFUYdPyi0gcwr
	 CNy461C17XB9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7A62CDB465
	for <ddprobe@lists.linux.dev>; Sat, 14 Oct 2023 12:07:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169728522866.23637.15792050710889564263.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 565eeb7ea5c85ed8de5bd9d1ea77acab22d2ddd75f691dfd8330aea25c877c32
Date: Sat, 14 Oct 2023 12:07:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697285228
