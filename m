Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D9BE633D6
	for <ddprobe@lists.linux.dev>; Mon,  9 Jan 2023 16:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 84164C433D2
	for <ddprobe@lists.linux.dev>; Mon,  9 Jan 2023 16:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673282487;
	bh=VUIBIk+st1uR+diMa+eNaNd/ALSgazjr3LSoUEHnoDI=;
	h=To:Subject:From:Date:From;
	b=ce2jdGwvmOPb7/ZA6L/0ZdKpxtRD7mxh201TYU9v9HjnW58ikyqwwWahv11dxbgGL
	 W+LbdV4fF0GeM+67AG20nTwZpO5O0u2LfZNDD3XhOtpn6ntPzemMJXbJprqig23ksz
	 PGO/qzSbCHX6lw9FjwKNPV6mfVqiKANdZzx0SMg/VlurbpoifzFaBVHHHHCrMqGVu3
	 rkx7qoHQuLFJ7AA/uO+zcgQvzv1Lu2Qh5HnubO5eXDr9jpmExNwyzNj3xKtuUouxQf
	 UoyK0TuEfVYAJUGGaZHtAvRHvU/+F1OPthVn5TMWLx/IaLC+IWQTWw+4vSNtJZ5uVc
	 3xltSPa0pcaww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6487BC5479D
	for <ddprobe@lists.linux.dev>; Mon,  9 Jan 2023 16:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167328248740.25891.12113132093196172167.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 743d6d3259af57ac1db1cd794fd92a28602aaf90943e48d796bd564745e8482a
Date: Mon, 09 Jan 2023 16:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673282487
