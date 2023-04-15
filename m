Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C2362F39
	for <ddprobe@lists.linux.dev>; Sat, 15 Apr 2023 23:05:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD325C433D2
	for <ddprobe@lists.linux.dev>; Sat, 15 Apr 2023 23:05:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681599905;
	bh=S7g2a8putUsK5DzOV2TPCSYM/FpTblNFT+0HBGN+CU8=;
	h=To:Subject:From:Date:From;
	b=UdLv7mg6Qcp9tKoBkaqe0moIYPrZn2c89A1Zxgcjys16NHQBLnpNO9Wy7ZxilKcE5
	 fX6AaUJ9SAYFg23fEnfRDm18keb9I+KL6Q0FaFkJFQTOLJ0R0Sq4NFyIKi0MeQfoQX
	 pr5FgBsx4WYxjiraSBrE3rAcA74b8msQYCxNG9ZO72PLWmH2nR+JP/ZWembZsBAtod
	 bv7WM6bJZ+Ro+1laPhWT+SLh3GVbjVFYS1Vg5KEkca0OQeBvEHsScEYNIyrl8+N3sT
	 z57pyOeTlEjxbLJUhmkhJhge/iXVGoMkpXW5YVPBnOYNrfWVQckP7NUSel8+ybVQ9M
	 D+trmLn9Xb6BA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB99AC77B70
	for <ddprobe@lists.linux.dev>; Sat, 15 Apr 2023 23:05:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168159990575.32121.9013513293698753284.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1b49d69842227d598411ae40607fd5688285ac833899f73da0e778f5fff407bb
Date: Sat, 15 Apr 2023 23:05:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681599905
