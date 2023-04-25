Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 303777B
	for <ddprobe@lists.linux.dev>; Tue, 25 Apr 2023 06:25:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4A85C433EF
	for <ddprobe@lists.linux.dev>; Tue, 25 Apr 2023 06:25:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682403905;
	bh=YkIJ6+LcUXz4YF+/CVPJEnJTTvXNa8SXuQxj4zWFpaQ=;
	h=To:Subject:From:Date:From;
	b=maYGmAalz7hFBaMXGM5hQC59vvUMpKA/aTLgmwqT+WwlhBSahfiX0qHvIiO/rAC9v
	 zuRDcCGs+VFsJKp5rB/nBIKcOqav4N/DD4ZqEAiD0bfoCB1YrfpZ++au6wh9qxAFaK
	 W6K5g+USwZ1Z8nrvuPVaYBknORVWVhqh7EJ6TMsXJEhMb69wi7iItEXTueIoOIQ3q4
	 /e5vKQReNMKl044Felnkjut9Y4LGdj9WQG9U7dKyITsgyg8noUc2qd+OTYNRa56C7Z
	 gNfREhOBVpxBDpaG8i5rCMzb9jZKdrPuEi3anPZVn1FPCC4GTB19pZf4RgnIT9zl2E
	 55MUY9n51f0HQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0ED6C77B61
	for <ddprobe@lists.linux.dev>; Tue, 25 Apr 2023 06:25:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168240390577.28911.18298997769076375092.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fe0fcaefe4b95e5f910bfbc4a782fd7a2753487921a0f7c4e45c949e6875d1c7
Date: Tue, 25 Apr 2023 06:25:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682403905
