Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AB157E6
	for <ddprobe@lists.linux.dev>; Fri, 10 Mar 2023 00:54:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7B64C433EF
	for <ddprobe@lists.linux.dev>; Fri, 10 Mar 2023 00:54:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678409645;
	bh=nO9ZOHZFcLBiopqzbiWN/uIIvy1H+MmOFbXBBvxroPM=;
	h=To:Subject:From:Date:From;
	b=QDtkoRdFxaKsJbKcU3j34hUvFfyWPPAKqdThaWNQurQkY9cLZu9JHpNnBRFBURa0a
	 Enq52SsuDKkB18eqgVJtkdtpV94W3xSNJ5cjw8r2K6u6vmHMRollJtJX/REmwFPTAV
	 sIDCB75pgikzJWWnRp77P7qBSGuWiBDsNEYcyBi+UCWYGHC5xkjNy7NldPQDZbnp4E
	 jHNeDPwoKFOk5mHao0t/Wrb5irlvOKEoPZ00vuWEE1KxxNC0tKuXpv21nMCXX1ARSm
	 MSID9Pf1tGZsOViOYykXMm5coqhpJEwhrfzpHVxsvt/1ix9tpg92uziV74Q7oKiPWM
	 P2rk3UMa5k/sg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BAF74C61DA4
	for <ddprobe@lists.linux.dev>; Fri, 10 Mar 2023 00:54:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167840964575.2416.14693685039404918392.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 97bbf57d32dd3fadbfdd9a8bcf9f6d274a7ab0fa28c34bd59cbed8651c2e9b95
Date: Fri, 10 Mar 2023 00:54:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678409645
