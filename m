Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B17AA2C
	for <ddprobe@lists.linux.dev>; Wed, 31 May 2023 00:43:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF1D6C433EF
	for <ddprobe@lists.linux.dev>; Wed, 31 May 2023 00:43:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685493785;
	bh=JPJp0h+gZky0t7vhfzMnHQfB5nGUwbfGgtgEBVc/rsQ=;
	h=To:Subject:From:Date:From;
	b=qyQd7TziqSyZS6FRmZeWVaLU7IW97fAgXmeUywaClJBnTzuAuK9oDuNt2ulWuTprq
	 53J/fHuiSOq7Cx91qnvw/w6Pk/cj/56oQLwKbKXez9uP7bPvY5tmNytqBMC1feWPeg
	 ZGwa8o+Z7voPs31urX+v8g9cEWQ3ezgm1ZVCYtH9C0syh5flELhxTnxvBj+ebkDARW
	 G+agDQqd2mrWL9NpDbSuD+JoZmzRmoC2o6dlqN4YsUs9d7DuHoMGSnSs3TqnC272us
	 1xpqMKgaO8uv5iIxxLrsvedV3sIwNZK0mFOdUkBjj65HnaXiBsJcqU6d0JMS3c7Nvv
	 P7tgZwLPoH13Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFD20C77B7A
	for <ddprobe@lists.linux.dev>; Wed, 31 May 2023 00:43:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168549378576.11529.16867072872668377521.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2ad4deb373c53f043dcfbf15d991dc30cf63db54bf2e72a26b5207875b0ace85
Date: Wed, 31 May 2023 00:43:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1685493785
