Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5EDFD208BC
	for <ddprobe@lists.linux.dev>; Thu, 14 Sep 2023 12:04:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2670C433C7
	for <ddprobe@lists.linux.dev>; Thu, 14 Sep 2023 12:04:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1694693048;
	bh=gvz2Op4OKu20HNJxH378LFKtsemf1mQYXXKf7LNJnOM=;
	h=To:Subject:From:Date:From;
	b=kSEM5vNO0pY/AogjeH3uNcHvIiHUCDdCFmwu9xTz9lXdJOHBheHi5yVNEzp8xI/6J
	 5/CWnDKTg1lDkW5LWOyg9OjsYol1x0EgQTofAPdJiqLoz0dCxOFhYiqofB5KwLKThr
	 qfyMX2xq7Fvv+Z/GwhKA+uzI/9Q1HHhpxY8Qf6ksFuJlgnVOHy5rvImEyWvYL9v381
	 1NHWfj5AUJiQk7hwBHkoyvNnJ92n1NS4TtAl2whTBWcxbRS8t9Umzn2w9TfGTbs7e5
	 QqFNoKGHrL8JLNqfZax2cu8ennjGB2Vn/gA8IHr/cAodmRsQAyZtpVhOjVJGEaSt9J
	 FptWa2/8j9uzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF51EEDE9B0
	for <ddprobe@lists.linux.dev>; Thu, 14 Sep 2023 12:04:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169469304870.18148.13751149080788511718.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bfbb85a42f77b040c169c3c00e77e4a12434ba8c93c28b39bf363ab697829897
Date: Thu, 14 Sep 2023 12:04:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1694693048
