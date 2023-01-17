Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07FF8EB11
	for <ddprobe@lists.linux.dev>; Tue, 17 Jan 2023 22:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id A803EC433EF
	for <ddprobe@lists.linux.dev>; Tue, 17 Jan 2023 22:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673992887;
	bh=lTcGkKgQfFEiaGw8D42CWZlPQLs5WvF7D4lUsC489Ok=;
	h=To:Subject:From:Date:From;
	b=AuV14xQ0vq/+kl/IDuQaMXhr0wPJ06+ICo0VUTuj4Nn9p22R5aSgzDx4KW7uk8Y9c
	 XnLsXBcT+ySjSpjDp4KunJ8eP+g7xex56LOVxSDuMsSBJPyXYQFji/QZcWfFpZKwUr
	 7Z3yZm5OntJ18IQOHWRROSbly+AiY1rIVITotVL6kzDbDQOw1G4UK4Z64cqc8p5OXS
	 Q2NNAUAvnFRZk4LXQIz1FAuWlDUFsdixT50r/0YY1Ta/9VkM3RSt4rGIahicXZ1vZu
	 Cw5ABc85bhiIHY5QKgnwCwd0p9Gjc9u+uEpHoQbFR94hGgaMM3biW67COl/CLYst78
	 knrgIpfjKNlPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 75173C6379F
	for <ddprobe@lists.linux.dev>; Tue, 17 Jan 2023 22:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167399288747.8461.8240399080411247654.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a71735f2940661cbbb6b1123c21ea6aaa5bdfb63e5d05fea70c84a6f81e22dd3
Date: Tue, 17 Jan 2023 22:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673992887
