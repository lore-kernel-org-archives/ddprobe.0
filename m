Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 65FCD11C84
	for <ddprobe@lists.linux.dev>; Sat, 22 Jul 2023 07:52:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D611CC433C7
	for <ddprobe@lists.linux.dev>; Sat, 22 Jul 2023 07:52:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690012328;
	bh=NASsr//zru870WSfwUNoiQzuGZzTbehSN2IwW5/d2y8=;
	h=To:Subject:From:Date:From;
	b=kluxYu/8QuA2SUMIwHH+QKDs0v6T36gT2oeTRDzVYnk3vrYOWaHFgQD1L881xFQFV
	 RR2BjGLuaDuKAglNmvCPDDq1sOzVNtryRdwqcdgqXaNn7fqBYYbjVrnjCDAy2iFmEl
	 6TSQn28kgt4Jjs+CChtmRnohTf1GajCRD9CdXTiTmqIWKaxBWVFQUsvSNpSv5GZCaf
	 Fcepi6Q9qTWkHL3J7zPEj15FChxQ9m/xSmHl9dd/kZXHnMm37cY4c0E3I6/C58fk8J
	 GyyEoX4LhyR5xUgWpA7EdH16wkkMRmrU4EizP2j5KklwCDDxCRd6rTBxnqZ+GmpAKJ
	 BKy0Kaf9ZtP4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5580EB64DA
	for <ddprobe@lists.linux.dev>; Sat, 22 Jul 2023 07:52:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169001232869.17936.10597451129860763369.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 49f43ad16f369cb3ce84634207b5fe275cd11ec224d650f28806a843aa67a90c
Date: Sat, 22 Jul 2023 07:52:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690012328
