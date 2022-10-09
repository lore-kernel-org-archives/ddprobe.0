Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C05AB2F56
	for <ddprobe@lists.linux.dev>; Sun,  9 Oct 2022 15:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 735A5C433C1
	for <ddprobe@lists.linux.dev>; Sun,  9 Oct 2022 15:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665327653;
	bh=9NOIm0FhykzKH7tP+P+j+wzVRgT7iD8uLtwCHUVSsvk=;
	h=To:Subject:From:Date:From;
	b=IciuhfgoBi5aae3FzsuIYsue3QY+gBd340MHUYu6wex2O8junFupJ33EWwlkBvjhl
	 /daihwBjEoBrHnMxZqOxE7YFI3fngA/OKsykAIN1GTGL9WEvuR8wjmJvg4jYQcAshR
	 SUg2W8jTKO3B/HtRvoVRBfJ8qHJR0aWoCqyBDVK0jZmGe1KdbJBzUkOI9wTg1JaeQ4
	 lwu9BZP0JIks0QZdy3COPwBbHt3t5It0CVces2CiQFVRMMF0sVUg9bYlvMIFKH6ZiM
	 CTk3cUwf3haXTiJxje2XCMjlm05MeB/RW8FheSkufryvqpLlHC8XazjqNRXCu2DbJH
	 2o/J+a7vI/IpQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 569E2C433FE
	for <ddprobe@lists.linux.dev>; Sun,  9 Oct 2022 15:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166532765332.14037.10931780629655788018.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7bf0334acfe4e9c20a43f2b8c20dcaa70f12ed0289cbb43ef4f83eb96e96b08d
Date: Sun, 09 Oct 2022 15:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665327653
