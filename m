Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5AD131427F
	for <ddprobe@lists.linux.dev>; Wed,  4 Oct 2023 13:26:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4064C433C8
	for <ddprobe@lists.linux.dev>; Wed,  4 Oct 2023 13:26:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696425968;
	bh=MiyBbR9MZRjubUz6XH+LyfjtUNVBUJ528Mg4/LQQu+o=;
	h=To:Subject:From:Date:From;
	b=RN+wD/T7MYGybykfAJYPK9uOBiJTriHCqOBSMHidOL+1HDlpbjN5jy+sgoCb5u9+e
	 n+vU1AM44mOjYaqT/rVMQJTaGHO8g1MhJt4uGXgkp0SI/0DNnOna//bARAPqod39wK
	 DjeFasAuO1Nl4CJVmm3scSJUEovlV3zbXTnDI4NlEvCmluRvoPGEiwJTM/EPinu/Ku
	 1IIYLorg6O4u4uzWRULT7N3B8546cOqJEr1iu0FzjNeVvcV+nvqDF7d7WOwKRNnWqK
	 X96erg8Q6nD1iULOuJkDBVb1SeWakjCkMgLjfiDoY0V7GEG4csXLJWhMHlRZ/B7x6Q
	 tVBnO/cLnpHMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B511AE7B611
	for <ddprobe@lists.linux.dev>; Wed,  4 Oct 2023 13:26:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169642596872.6159.8100928505864581331.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f1e3fba7548afa70af9abb7443dea5e5f26d3b0035603f4281734a7546dc3fa2
Date: Wed, 04 Oct 2023 13:26:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696425968
