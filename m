Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A4A23233
	for <ddprobe@lists.linux.dev>; Sun, 23 Jul 2023 18:02:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA1E2C433C8
	for <ddprobe@lists.linux.dev>; Sun, 23 Jul 2023 18:02:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690135328;
	bh=5UwBn0P6RiHz9buF3sRJfqzgOR6AqqUJ6kGoMYE/HGM=;
	h=To:Subject:From:Date:From;
	b=chs52/S9psu0Y6v+0abhY/qQI9CMMBMR29tZl7gzKH79PMdatpNck19NJvH/mnJ8T
	 /mikkoiJRKqsKbQg8YcZYoSWkE4Lq5dlaRIhveWWJ/puz8Od3VC6xlnooKxBQygpvV
	 VLtHMn55yGdT3Q7YoTNaJOyYDFsOO4zvBnMzeLuF3h/nggHZGm033uwmyDZzSil/Fp
	 YQQX/jR9du7nPZghbw9/tuv5T9i5x1SwFASop3Io4itVnASAs+WgrAL2dSgFi+J8qv
	 rqZ5hEVxEki5vUrXMOHeRjMikSg0JD6EIz56cKEGcJOsCTYn6wrx0hHeq4RV0UBgjJ
	 Lpsc1vSW9v+VA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADBA3C001DE
	for <ddprobe@lists.linux.dev>; Sun, 23 Jul 2023 18:02:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169013532867.13877.2004632318507644085.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f22742350231cf02adc1b4dd8c3393f00e4bc23b9353eab006cd5b31e666cf4f
Date: Sun, 23 Jul 2023 18:02:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690135328
