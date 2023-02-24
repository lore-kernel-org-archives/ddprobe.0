Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43C83D2F2
	for <ddprobe@lists.linux.dev>; Fri, 24 Feb 2023 04:25:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4920C433D2
	for <ddprobe@lists.linux.dev>; Fri, 24 Feb 2023 04:25:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677212705;
	bh=QZ2zrcXGmv7uxJ9oD5Bq8uJsGX6pO9bNWyg20vj69D4=;
	h=To:Subject:From:Date:From;
	b=WXnr7J641NVwaY5GvZhq3fSbnXYGuaEc7CiwdAJTCujI4kVZ5DLG7IEFCQj5EvXbH
	 Xdu6ws/aSk31d0H7L0mOJ/Id/9VfQjWQ6hr/I8waGNNjLJ20Cq+t2kelmW5yej+4Of
	 3ArHotMuod+PgLCL+HXnO3qN4JNopp4ysvpf+7U7IDHZvFLIqAeL+00DD8PfA+vBbD
	 jEgBhhGXpLcM6mTKWa82Whl4cMtrFatcrkK2JGjX3w3hdGF7IXUVsrBIU3FAVa7Lxx
	 dl2+LX7qN1mYhSnyZh89seEsEID3w8bH67I8+SGJLbpRuq4SCqg+YF6HaZdCkuvRDX
	 dZ7n8EBhqfOkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B900DC61DA4
	for <ddprobe@lists.linux.dev>; Fri, 24 Feb 2023 04:25:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167721270572.8884.9949573653015002812.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aecccbc971ed05531fa3d1a81bb9ea0aa2bee51b9c18b8c0ba667855bd2ff9d9
Date: Fri, 24 Feb 2023 04:25:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677212705
