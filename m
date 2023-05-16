Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6376834CEC
	for <ddprobe@lists.linux.dev>; Tue, 16 May 2023 15:23:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E9738C433EF
	for <ddprobe@lists.linux.dev>; Tue, 16 May 2023 15:23:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684250585;
	bh=jVcj8/afWY5qMdJ6MqWs2LWmekczGJmf5sYXCF8vFgg=;
	h=To:Subject:From:Date:From;
	b=XqEmo2wg6a9oOfgZlfckTmje7qbxG2ey/PuEXGIRrBlIeveHHMGy7occ8vnghHAHt
	 ICV10G1hqvENYKXpS8Wr8NGtQJgdNtkrH9p0QfV2q6N0uPHEXDC8UwG0E46n4xy10k
	 GB3s5CzZzgI13z7LLjO1SROeSvb/qjmg2CA3YWV0z3m2rDzTQx4iM9wCO7UaOiLaHn
	 UVfess+ImgazqN7Ek5NWu0+GQlV+8ppHbyTrqLgfW8oDEvh6z1yfcLa9po+H82v1tB
	 zXWlnB5ucggO6pYd7++Q+tzim+aeqBwcQSeKqTOwUd8vTzzPVgvUHx6zzkDc/Vvdxd
	 W0QhVHAjMF8xw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3A5AC7EE25
	for <ddprobe@lists.linux.dev>; Tue, 16 May 2023 15:23:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168425058578.31274.6171082576375114940.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fb34a39429f71186d00ee66ea0b8270a90f0b96ea1a7b229e66ded5005740af2
Date: Tue, 16 May 2023 15:23:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1684250585
