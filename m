Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB8552577
	for <ddprobe@lists.linux.dev>; Thu,  1 Sep 2022 22:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6FB18C433C1
	for <ddprobe@lists.linux.dev>; Thu,  1 Sep 2022 22:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662072053;
	bh=FGRfv+i6OGD1Jdmc/8mcJvx3iQ8yhonW8mg5cH6ZGcs=;
	h=To:Subject:From:Date:From;
	b=LemiHNZkrtc8xu5gh4YUrNyZmyEfzqB3pXv4rTuf/p/QX5EQlsozjuNLPwOtZt4lt
	 R7v4G0STAL7M4z8HVsgRpZsG+TGV3lUx94uIMyVkzG1WGES5/FrR9AncuNm/XJxOMS
	 X+YC6NB7+5G7Xzf6HPSY0OWqZD9lKNDszI3nbeOBbjvIf3jkhaXUYxPpN1qdwM5zJk
	 JO7kgRG58zX6maHObpnJxFig9t1v7pj2uLWstGPKp6pZihZULpCxHQDgo6nNSMjDFH
	 /PJKhgG0kBu60/OEY2Mg8mY3eOGTcjzYdFfTPbU1+7eOjqtd9FgVO6dX7tLG/rin7w
	 50VQvYGm4J5HQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51C96ECAAD2
	for <ddprobe@lists.linux.dev>; Thu,  1 Sep 2022 22:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166207205332.21841.3533763251837834842.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6b4f460a2ad21d0f5542f4f189fa220d70558ecf6246b4983c08fdb1c2b1ce0e
Date: Thu, 01 Sep 2022 22:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662072053
