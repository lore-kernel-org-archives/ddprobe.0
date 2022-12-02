Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C869210EB
	for <ddprobe@lists.linux.dev>; Fri,  2 Dec 2022 01:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 75365C433D6
	for <ddprobe@lists.linux.dev>; Fri,  2 Dec 2022 01:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669944054;
	bh=nB/vHr8P2FLKduUfmA3wHRXzvE3/pbzEZLBuCFByyeI=;
	h=To:Subject:From:Date:From;
	b=kqYmQnHDYNZcMecRi2rHqlbh6JQnv+XFlmXu0Kj8r5mS7hXCIRtwQNl2Vmz1lwtxD
	 GzHc8ack087Dmkv2u1kTIsZ3hT/XgZ3n0LOYp4L1JBy8M33fghkcgv8os7VNJ9gIZj
	 dqnA/CZeZ5k+k8j2ct2qOwHgzmXjxyfsGfkM8G6NoLxqqvGeRABh73f0VLKAYFvUek
	 G4y8y/7cHYpIPoc5edo7uN1A7oQbXN68lP/ZhJbITHSASe1oluo2/IlLjfp92leAej
	 UZqDtOL57IN1h9PMhtGR/UCWPcfta8EXXQe2UUyhTdOw6WXLkeD49Q7jJktTwRIeUT
	 9tHGPgixcdcMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 58164C4332F
	for <ddprobe@lists.linux.dev>; Fri,  2 Dec 2022 01:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166994405435.29712.8715833491996194088.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 335ce104ba00056dc452ba37c874b06a948c4754714860746374aa7a7139bba5
Date: Fri, 02 Dec 2022 01:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669944054
