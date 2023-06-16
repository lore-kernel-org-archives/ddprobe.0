Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 87BDA6139
	for <ddprobe@lists.linux.dev>; Fri, 16 Jun 2023 23:09:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E4840C433C8
	for <ddprobe@lists.linux.dev>; Fri, 16 Jun 2023 23:09:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686956948;
	bh=gISFy6+zrY7em67RzJRw6Ojtmx6sjsipr4mSmmkZJ9c=;
	h=To:Subject:From:Date:From;
	b=iz4/H4Zm5uhjXAT9Q3Mwbh7qpdr2pKhMTmcmgbZe1znWW8DXDecPubOSNDteM772+
	 40pwXeG4BjcnMGqJpuv1IPiEKHdNgBJlcwJG0dd/kTp0s81Dv2kztmVrRGpGinDBsh
	 qdgNEvucKXQtiVwYB01hPlq9za5iCpTDFATSmrT+uENfX8EucdWSRZkK8JI+gZH1nY
	 JL4m7uDv9/JeGV+fPAyq9gcGBuAXb9hpCLd2El4ne4IiOBeWsHU4QmeZCh75pTzOg8
	 H/NkFIfCQC+2BuMI79I/9irbgB5wC8YvG0k4Y6DoWzzpvECW6Q8qQ1yBKZEL7NwgAR
	 Gf7G+hfM0lBSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C112EEB64D7
	for <ddprobe@lists.linux.dev>; Fri, 16 Jun 2023 23:09:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168695694872.23074.5797873047194666066.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf94bea190f38395309ab04b51d2a122e5837712b91e84ea5cc45cee52b0b3b9
Date: Fri, 16 Jun 2023 23:09:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686956948
