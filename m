Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B824B7C
	for <ddprobe@lists.linux.dev>; Sat, 27 Aug 2022 07:40:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6F769C433C1
	for <ddprobe@lists.linux.dev>; Sat, 27 Aug 2022 07:40:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661586052;
	bh=VBHZg2zqaVmKjNVS/0Sxurq4r+NZCSsXEXSl6NEWo9U=;
	h=To:Subject:From:Date:From;
	b=NROyq3QjtGCOWC0gFHa0BV9th4TR6EImMeUCAp09MXooYUJxXwU+JhmsPcRbeQAFO
	 eZ9XUn+bwJqgGBRmpg/NkhN/epj+uSU0EZMjq/9vv0i65Rtih33QY0kCmskXyTtUHl
	 VfLcL8E3G6fzOlBeVVusN7fdCwrieqPcZKZJIL/QrB21raCulKAtbSoPjcn75GJSQF
	 xTZ2B4Z1sWyPyG+tFI+n5h4FAkO6ruLEeNKBWraF7DEYmz2XtdPbOoPPTlBR5w5pfR
	 kOtICX2OtOOucnys7p/CI5d4z5p+LvJ/odJE7Oz0j4mmFovacgFBAR7RwIG7g8S1Zw
	 Am62cMcGLDELQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52DE3ECAAD2
	for <ddprobe@lists.linux.dev>; Sat, 27 Aug 2022 07:40:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166158605233.7242.43333944846520268.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db1037a9bdfa9ac3814a1397ea09926960603d66a92a9da89d4f589b4e1a72c3
Date: Sat, 27 Aug 2022 07:40:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661586052
