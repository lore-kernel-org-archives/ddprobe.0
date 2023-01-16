Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DBA11EC3
	for <ddprobe@lists.linux.dev>; Mon, 16 Jan 2023 04:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8CC8CC433EF
	for <ddprobe@lists.linux.dev>; Mon, 16 Jan 2023 04:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673844087;
	bh=t1X4oaL9hwR9q5KNac9avkcoEVi97PgwOdPyYfV8w+0=;
	h=To:Subject:From:Date:From;
	b=g57rsTvbnwlGk3Y0ZTEuZeZ4DkGS54/SX++6YMyDSFUlL3K8VGzB4Y/7Ieojpiddp
	 6LurAnCqrEuBvkaejrWp6elBzWISOJhYTYgNZBqoPy5tsG6uNJM6lPSK8ybyg6ET2Y
	 0cfOKPuDnsUZ0c5PKeoCY8Gq4EFXwfVGe7KnjYSQhJ5U+I3gUS0Xb7zj15HsExBlXn
	 Hn+BLFvp2Gj20OMYuGECpe2bOcmdi8hloRqZyubPVYu89N6yR6SPVjci1LZragn2My
	 2Drp/T07T3t+15jzHfwiFmLbeDNkFmyP625e6dymLRUccYVZoqYg8W/TRUYhfREwiE
	 1KLY173Qzea1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6ADABC54EBE
	for <ddprobe@lists.linux.dev>; Mon, 16 Jan 2023 04:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167384408742.1426.9166509693088573729.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bd73840d5b6bb16940fd9cb1627e061b15d184fce249e9efb1e895c489e866e9
Date: Mon, 16 Jan 2023 04:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673844087
