Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5ACD7631
	for <ddprobe@lists.linux.dev>; Thu, 20 Jul 2023 01:32:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA17EC433C7
	for <ddprobe@lists.linux.dev>; Thu, 20 Jul 2023 01:32:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689816728;
	bh=w/PQE6FXVT0BFbZXzK7RJ9rUFNYE7hxccx9uPPXmjDQ=;
	h=To:Subject:From:Date:From;
	b=LqLf7W1hPryAT7Urjl0aRa16h8MWR8ZeYMznzh/g7AUmJF9zxHP7NMeYYefgjWtz6
	 1ReZ8C7MhkjU8rIVQ5zQveYGvUXEwmaocr+W298iNOMX41sVDwEcT9S4E2lnEh91Ly
	 AH6nPNTWKOH31W6cDApkZHxuIGS3Cm3uv8E5omfCtbjhYcQUzJSOGgK3YQeooo5/CF
	 qvjZpGvRpv4/xHhvYmDzLBSWeM+8JOeTzYF1C3XY1yHU9yKvEKgZNmpqGMAjBdeMpY
	 F5wtpBIK0/dj3s476fJczkBD9nfyPrISENmRfU6fqGGoIjYjU9kOd1W2PNqPW3wS+A
	 M02JL59bidDog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD343C001B0
	for <ddprobe@lists.linux.dev>; Thu, 20 Jul 2023 01:32:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168981672870.28110.12606501518974518506.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ddedd29a5c4424832e6da43d36138b6ba96777d340a45cf7bea46d2b66629c9d
Date: Thu, 20 Jul 2023 01:32:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689816728
