Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47177134D5
	for <ddprobe@lists.linux.dev>; Wed, 14 Jun 2023 22:27:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1817C433C9
	for <ddprobe@lists.linux.dev>; Wed, 14 Jun 2023 22:27:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686781628;
	bh=uxJ8kEf7bTm+LJQC5RwC4zpXsatduqX/bpW4/Zd/UfA=;
	h=To:Subject:From:Date:From;
	b=FubINaW5aAu7przcOOLTz2Q/qafrmZsBqWuXq8xtWclT9ogOLMmmGxcemMTaAoF1M
	 2ec3f9K6aYpscIwUkaMddMibuQKe8ZRRr6QSD3nPerlBq5oScF38hb/jotW0u2qbPp
	 YZYf+cLqIGYQP+L2F2mCOzAmU0sLpfy5JQkhCBl/BH8kgUy2Sxpnu4fd6WyRbsxco+
	 Sfo7UnELGdSY1jTzj69xqjvwlV34YbWVH8HecetsIpfoGBRcSN2rdDralwBdblkJPv
	 adThuhGS9h20PBunPqhV/0zkLnHiLj96V+FCnkkSTtFPyswMBKWAMcS3+AIWQAU6/O
	 zlstOTR9ULa3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B153EEB64D8
	for <ddprobe@lists.linux.dev>; Wed, 14 Jun 2023 22:27:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168678162870.1308.4310144145441035304.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 27433235e7f096b69fc168d989c0e77b23fd1c047c374107417b8364fbbf6434
Date: Wed, 14 Jun 2023 22:27:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686781628
