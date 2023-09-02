Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7F87E17D2
	for <ddprobe@lists.linux.dev>; Sat,  2 Sep 2023 07:14:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1051C433C7
	for <ddprobe@lists.linux.dev>; Sat,  2 Sep 2023 07:14:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693638848;
	bh=ocqgXZw0GtoiP/oEhZY5eMTl1imcyNMbKHEuV2AJBcM=;
	h=To:Subject:From:Date:From;
	b=Rt7O6RKmHO0SW0pAef+9yz9BeojwFOx8IlRLbyU0Z5OimgjEMRStPp3j+HLpsRrY2
	 8JPuICdHWCL2cNcQjQusST0jOywcz4IMQudXSWt2ZfHlPQVBIr9I1gkAttu6U8q7qZ
	 OqX7TZimnwrQalb5yM5la8DtK6Zdan+QrvwvAEbCm1oXf0PO6ZMchpxpGU4Nos76m7
	 Op3t+xZNd1ktkvbTc8BncME/RQvzI0uHk6ZVOOIiQ0sJ5ShCj2ktSNt9hv930WZ7hZ
	 aak2CF5xSwEgDvX/0TFFESgUWVkC7zj6MA+fDAfwjqmw2cUMD9ssq22jUs0wQBwBYU
	 jr/2eeCw3J+GQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B479ECA0FFC
	for <ddprobe@lists.linux.dev>; Sat,  2 Sep 2023 07:14:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169363884873.30726.14637489161677629441.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4d56e497a03abab2aa26b0176e1a25c140769f1783072d371c0eaf51cbf8408b
Date: Sat, 02 Sep 2023 07:14:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693638848
