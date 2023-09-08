Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7955F1C39
	for <ddprobe@lists.linux.dev>; Fri,  8 Sep 2023 21:24:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EACD5C433C8
	for <ddprobe@lists.linux.dev>; Fri,  8 Sep 2023 21:24:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1694208249;
	bh=YYjnBUg2vmwwd1H5/UaPqffEKxF/LdJbXcnubtsaXLY=;
	h=To:Subject:From:Date:From;
	b=HhI/gMIUCNsTrO45bT96A00Rkv2BUTQDCn24WMZMlIvH3W2ZVo6S/Q1qCo1604jc7
	 WVtJlIkIjKWuF0yC25RVrg6lZEGD0QhUd2+XqQgLkyIg0I+HqM7tkPOXrv29sl8CGi
	 /WKlgEtA1rG9o501T/pk3Ys4ZVYuN8h1AiVNHj/IUVZUXtIZ981oz+udYE8jIoYsKs
	 g9ZAlhBTb422jlZonMsu/2cnkkadJhcLgPhv3yQLYAFuYW0lpuYZOD0GToHaadDNDR
	 ED9gmTGgVl42oG9jQa9Awz3lSLa/9Mdr6GTIUtfuk8yLNzYINPA5vi2aasXQk9OJcd
	 LvENnYvjlHxvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CC811EEB56E
	for <ddprobe@lists.linux.dev>; Fri,  8 Sep 2023 21:24:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169420824877.31068.14908352983380552894.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f24901d76306284c6eea205ca645af4360f26bc0d4ae83bbcacfc27697aa741f
Date: Fri, 08 Sep 2023 21:24:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1694208248
