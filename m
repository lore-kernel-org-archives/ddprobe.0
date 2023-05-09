Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21FF8174F5
	for <ddprobe@lists.linux.dev>; Tue,  9 May 2023 21:31:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EAD75C433EF
	for <ddprobe@lists.linux.dev>; Tue,  9 May 2023 21:31:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683667866;
	bh=sp8z97Oa1j0poPu9RsIURr7Cqw/aO73qBFyjtXJFNTk=;
	h=To:Subject:From:Date:From;
	b=aFUjrqtj1NHo4mR1J7AhbNH5+Lu3idmPq3nNiiR5ZXduBf6fMMLWizCMTwl5eqJv+
	 w+25v6V8NqElQ6tEG9T7Gs+IS6KKtzTiX7LCYWn6HaOPNfBPqmnzcDDy66AiHpjkQA
	 7AwkGzMG1VfVxi21RNCaPs4bImbAw70GYNeCYbSZgV2ganIWiNcQjw3WZ0uFtOjeLK
	 KU0+G4n975mrrJ0YMXHB3cKVY8m+U65lziEHLPQTSFcWWndqpBWX1qY2InLiTNqs66
	 igLFPlONzQqvd85hLhXNAsfF7LGpkUzkcOKAPDKlQea46l4mI5W9bc+R6Iwgt2oQKn
	 vNKq5+ko+rvcw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C643BC77B7C
	for <ddprobe@lists.linux.dev>; Tue,  9 May 2023 21:31:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168366786575.752.16761233110576251846.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 77079d35e01aca0d05a37950be85225b82f56e411d8a297623368cce8750389b
Date: Tue, 09 May 2023 21:31:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683667865
