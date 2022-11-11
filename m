Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF12D2C9D
	for <ddprobe@lists.linux.dev>; Fri, 11 Nov 2022 12:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 91A5DC433D7
	for <ddprobe@lists.linux.dev>; Fri, 11 Nov 2022 12:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668168654;
	bh=ptlA/iU0Mleub3zg8hno7hG1EqfemrPxF0F9VJ68SNQ=;
	h=To:Subject:From:Date:From;
	b=Vwd91NsBsY8cpxL6/wHZWDEhkraNSa5xCwGqRMDR7NNqo438WsA99Ui5VQXjC8ldX
	 c4IK3h9E9TCtoq7RabWP5ZZEVx6r+4kxw8vv1vMjYfWwT2L6ptoae40eLWpnzLShUd
	 SjwaT+Ot81fo6EGXR3+N24PPlPhvuVHZruE3LuNVe/4IioNxtPHrMIKgrHaU8Cpqp4
	 HWnmPfhCT6mC1mG0TJnNYYk9qevfNhcdRQ9llqRu8nb5G1CuaYEWv17o00Oj796ViV
	 rShjujAd6Vd/iw8bJbJuQDEzkn3Bt3IVq7iG9gi6fmLT654+h7gDkFNSSCIKR4h+//
	 RH+TS0gj7yd1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6F602C433FE
	for <ddprobe@lists.linux.dev>; Fri, 11 Nov 2022 12:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166816865444.6038.2801548931952399022.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7f36df4d38434f316a82a3a6d5463523d2413a33f71984ab03cc58db3833841f
Date: Fri, 11 Nov 2022 12:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668168654
