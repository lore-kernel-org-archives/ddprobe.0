Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E2587E
	for <ddprobe@lists.linux.dev>; Tue,  2 May 2023 14:06:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 12FB8C433D2
	for <ddprobe@lists.linux.dev>; Tue,  2 May 2023 14:06:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683036366;
	bh=t29Bc80yLbvFEHUKUlraFqWMc1uV9HqQk25NPn5JAuA=;
	h=To:Subject:From:Date:From;
	b=jOGXbI9Q9RoOcbX7q+88fTU/+wwLNnfisyPiWAgimrXcgPRHheFYJtIqyxX4Dy+p2
	 s5nEGOQ+VjBsF3eCUR3HGLO6E/f6wPQHEDOe+yuXPOG47OHWY31q5KcKwPd+9DZVZw
	 h6eEB/3EgGYkSwHTZkHU8Q4Y524bNmoxggVtqPrCEBr6Ad7FQjaAzjEExudu7fA79M
	 GGcXQ0cuANLC+3GRWy5tmGUcueeGwV6HEwMsTTgg+dWFTTajJ4hDlpImfF9B+RDo5m
	 S9XJuGnKkHdW51R1v8vk+BhiBqebgR2tjdLN8v9EBXByu0J2oaDhBuiUgan6dPWW8F
	 8OxJhkpzzLuww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D4004C77B7E
	for <ddprobe@lists.linux.dev>; Tue,  2 May 2023 14:06:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168303636585.27040.7309149127775408129.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 98cf601bd43f27297295b5bc4c1006a6e466325bdaa1aae30578e239262a2e7c
Date: Tue, 02 May 2023 14:06:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683036365
