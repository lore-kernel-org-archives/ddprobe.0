Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD65B15BD
	for <ddprobe@lists.linux.dev>; Fri, 23 Dec 2022 20:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 87BC2C433D2
	for <ddprobe@lists.linux.dev>; Fri, 23 Dec 2022 20:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671828687;
	bh=sG63MrIJRlPgGjgoZMzjGKaSGA+NO/bJl4XjqVuJOvI=;
	h=To:Subject:From:Date:From;
	b=TmlJyynUw/hEtGD9kpYKsgf4bqk/eXxeOcnlKCO6SPHMyNDB5kMuq9m/vXj2Uy16R
	 s3G6XAfXoa1UGs89nWMBDlauu4lfwpM+3TAykMWKVUPwo/acx/s15xhvjiDKHtiCR6
	 h9y7PyxzQynC37gnpa8ygg2p6GRDNErVU80iJKlEvRYoffnNQ0dslhRY6yzDdV5jMU
	 mqpVxpoNJqCUHnhCdSSayN+RvF+A22GCQQo+XDNpoTvCz9BBGPndezqvzdSopsD23a
	 8oNQyP+unq/VGbnXSaW3ylzFw4nwp94ZV48XkcTZaqSMreca1bdh7vLvwsX0q+qlv2
	 sro81MaoIHgRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6BEFCC4332F
	for <ddprobe@lists.linux.dev>; Fri, 23 Dec 2022 20:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167182868742.1040.6512070631502910399.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c03ebd4b74986d69526c102f20725adc9be46eaa3a21584d3cc28af893c2d3b
Date: Fri, 23 Dec 2022 20:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671828687
