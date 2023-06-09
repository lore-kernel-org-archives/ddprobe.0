Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A43219BA3
	for <ddprobe@lists.linux.dev>; Fri,  9 Jun 2023 17:46:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id ECE13C433EF
	for <ddprobe@lists.linux.dev>; Fri,  9 Jun 2023 17:46:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686332766;
	bh=WrSsDCjsq9+BsCiluzRuhJeeVJW/jU/4ErsFkMnVrJc=;
	h=To:Subject:From:Date:From;
	b=L0ShWvktJk+wZbvPL598dyYvOuEdfopEns1pcf8qAcZSBgtcj2z/2Y2e9nBIYN6RV
	 VlNHI2U/X1YPkCLurr9qfkTb7H/qF7fXAkSV/+5F35dBjtr091Ou983rmkDYSP0z9b
	 PVsrId0WFOPKXAHrsY34gMFiocMEuvFvlVU1uoleM/8GQxEyZteg7IF1GU2WU+5ZHB
	 NDUxj+/enFBtN4W8YyYzoQM0xB8+17NwCr53M86ODp2v2R4EoEhyu+pmhlMx624ZIo
	 awlqFYxsC90v21QsqLJ24uaeWCFVY3+9NI08qV4bkUIGep/z3hSVFQaxZW9ZOyTB7+
	 tXR6CJ9BFqIzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CE372C7EE37
	for <ddprobe@lists.linux.dev>; Fri,  9 Jun 2023 17:46:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168633276582.29746.17538396810926593338.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1a4957b93d70f58ad052cd16e38a47fbe4060efd449f7e0649d0f4dbdb14f8d5
Date: Fri, 09 Jun 2023 17:46:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686332765
