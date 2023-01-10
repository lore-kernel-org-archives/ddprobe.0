Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EBD757474
	for <ddprobe@lists.linux.dev>; Tue, 10 Jan 2023 14:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 99AB2C433F0
	for <ddprobe@lists.linux.dev>; Tue, 10 Jan 2023 14:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673359887;
	bh=07JP/a6pUfcdQFgdQUOcspmse5m58HOv3FBRkMgyad4=;
	h=To:Subject:From:Date:From;
	b=oum6Nct8/+KYFxjfVjzT/GVHowT63IFlJp1Fa999klsNTijcMHBQL+T12qwmFY31l
	 cQUsl0BPJteFxGfXZNx5r5N0dUzOxLX8Q8FOUxUAXOC0Zm6hp5sQ2BVuTmrjP4Y/2g
	 BpsuynXcB27mI9LSn86RHEN082gvGzdVIiNl6QV0y3PDy4Pw0GEoJv8NLTnvOzs/GN
	 /Q5Bxqsx8NaFQUAh06XOOqBO8ipBAQnWYL/1eo+jU3jq7+wtWiY+M2Nb1Rvoqwn1wW
	 PvDbrPLPEP0HAAKFD6p+R6hu4iI7sBcHjp4i1BBciu6ld9PJoIsQ0MNMJuW2W5nZLh
	 eE9m9e7u7nvQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 73B54C54EBC
	for <ddprobe@lists.linux.dev>; Tue, 10 Jan 2023 14:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167335988746.12138.646590041292549138.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 65b6d66e84bb6cedc4e171c150de411ace0a56e786d89f5c5e98da7c125780e1
Date: Tue, 10 Jan 2023 14:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673359887
