Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8A1375660
	for <ddprobe@lists.linux.dev>; Tue,  6 Jun 2023 08:22:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E2055C433EF
	for <ddprobe@lists.linux.dev>; Tue,  6 Jun 2023 08:22:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686039725;
	bh=S2TLGbB4GRfriG1CBDJn9QfH6w4wC+qz70SHuV4j/hE=;
	h=To:Subject:From:Date:From;
	b=SrL63g4VXGvqyBmI39moAju3YLb9S/g9yC1kGSd9zbFrJelV/FdKepZTJQcor7xDu
	 9MOngdwhSAI5j38b9R2XCsywzGFBjMlJxiiXBI9PrupfO7VLAnftJOb8asieG7OjvB
	 VxTUUalEz50CQI9x1hJK6ULBsTVH06onwF0gm+5TFpqw8QwZHbovbTDHWr3mfZ0YBk
	 dXJ9/N86QusZDyhZJphVQEMTQyHYKfeSzwhpOFIeJgsrc8SGUdgnc7HYOdLfrSwPqb
	 bRqnATlfR0Ld1e1Sxa9jSKGTpwuu47uArvfrVSFmQ+5Em6Y1jEGFSzaDtzWF8PfR42
	 L722pbrUjl2GA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFB28C77B73
	for <ddprobe@lists.linux.dev>; Tue,  6 Jun 2023 08:22:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168603972577.9129.3066795363723882096.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9874f534332612764566acded7465f463c133fec31cd185a4e845c5cd53adc61
Date: Tue, 06 Jun 2023 08:22:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686039725
