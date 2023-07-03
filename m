Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 77AF8181
	for <ddprobe@lists.linux.dev>; Mon,  3 Jul 2023 00:25:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 03363C433C7
	for <ddprobe@lists.linux.dev>; Mon,  3 Jul 2023 00:25:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688343909;
	bh=Yr6WFivoJfDgQ4JtHPlWqCJ63az7R221o3FnF3j/d8U=;
	h=To:Subject:From:Date:From;
	b=jdRX1C+PgXJVSQhucNIehUf3QUVwjGp8rR0GeUROBk+n8bFlZXkAY0XHZRTCwegX4
	 hEF5NRRzRLxz+tG1ubria0QVh5kkLh7XkitNaSJ9zPzRqLDZGqp3aRvVgsN/3z0E0u
	 mZEyVCo6CBvfGtwJ9SXOtgdgwSp/8rJSiko8iBvHlXB1VDhT4Tat+mcsXLAXgi0i3W
	 GXbUHEKabSwwmbmbomz7u2GqvdoEH8bxiN1mRcYpm9vvQn1cGABdbxyD9dwB32QlMz
	 m1zUlPVNb+kAY/JYnn+RMtH+40zYUotWjNSOxcj+JLtpL6XhhlipyKobXl7kS9Zo3b
	 46kHJrRXQq8PA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D776CEB64D9
	for <ddprobe@lists.linux.dev>; Mon,  3 Jul 2023 00:25:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168834390884.29021.9046559415937985075.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d0889ea453cd95918b0c319f6bcdfe726314f75914362602e225fcb81cc4d15d
Date: Mon, 03 Jul 2023 00:25:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688343908
