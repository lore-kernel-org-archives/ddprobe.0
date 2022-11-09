Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B4415360
	for <ddprobe@lists.linux.dev>; Wed,  9 Nov 2022 08:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 749A4C433D6
	for <ddprobe@lists.linux.dev>; Wed,  9 Nov 2022 08:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667982654;
	bh=6Se+sqJ9Os5xR5wnuzo35JF8tLXY6Rn42cMJc8qa/jM=;
	h=To:Subject:From:Date:From;
	b=QnVxRF1Y3Q9qMS+jPA2hqiuWSMCZzhvZABUU8F4z6Xb4d1Q+odtDwzVZmLFguE7IC
	 j35HDqrGVH98kPBxempqgQrGuliwUoSwD5RaTVsWskpjUCaG6bZf7uwI1A+omTsWZu
	 CFW76GD/DTOV2/u18WqmQzFFlgmlvwOxgL05gjlCRdxCOZpeU6ncePrTQai6vmC6ve
	 JUFUxclonVmZ2iupVdFjZs337DG+lQqyvvHko4rziyq9MafhgZU8MR1yu3+dw+sC0N
	 nslG46qXHT62gV1usOwh+kWRayyhY8SjXRuOZmFeAjzX6ac3qPghcJfRif29RF/24A
	 5NeQHhNOprpTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5B9B5C433FE
	for <ddprobe@lists.linux.dev>; Wed,  9 Nov 2022 08:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166798265436.25191.16537450370834433459.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6281a006302573cf74b5bec4a7a6ccb5c97c5591aa1a6f8cac822b5bf74aca6a
Date: Wed, 09 Nov 2022 08:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667982654
