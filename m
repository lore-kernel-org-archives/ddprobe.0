Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B58747E
	for <ddprobe@lists.linux.dev>; Fri, 21 Oct 2022 09:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 652E5C433D6
	for <ddprobe@lists.linux.dev>; Fri, 21 Oct 2022 09:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666344053;
	bh=TEjyNckhA/++Uq1yaRzdiqAUYkXykt0vPqTHiQzNpKU=;
	h=To:Subject:From:Date:From;
	b=EidV3PVxst6zG+n5hrepiqN+PJI3KbaZCeOXH0FwqRi7PMmT30ZSRHctMQ+Jr+7Qh
	 PuIaayiHdamDHA9L/d5DXzvI5lBs0D/ctVwuhB1IPqGVlXzwax0UMLv3uWtOyC/MVa
	 avgxWhGA9OXE26uYx4OiB3OdX1PqxUYK0L3ZqA89tiLjWBTqjfWex/jNz8N4ntzXia
	 Tyi5oRWKdotjn1nkuHPR/xnyUULZ6NsChweuiBH2M6BqhRM56v3I4FPSMvVa7rIeY8
	 e+mwpEIzPMDhwlqHDVuNt+dob0Ru7WKSsb7k229MFHf8sUywMt4AvMfBZ4MQ0CEQgo
	 ukabIyfSK0buA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4E247C433FE
	for <ddprobe@lists.linux.dev>; Fri, 21 Oct 2022 09:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166634405331.11541.9083010539300323080.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1a5f8d0dbd8c389c4094ec19369ce4b20acc99a720958284e1da1d4ad51fecac
Date: Fri, 21 Oct 2022 09:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666344053
