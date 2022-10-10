Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB68E1360
	for <ddprobe@lists.linux.dev>; Mon, 10 Oct 2022 08:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6EFD2C433D7
	for <ddprobe@lists.linux.dev>; Mon, 10 Oct 2022 08:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665390653;
	bh=mpkgfzCNv6TZVrNy8NZ+U3zNXnUbAIZasW3u7WvQyE8=;
	h=To:Subject:From:Date:From;
	b=FDbXHeJ3zgf6jxZSttI3+u70dXI5dDhdyHBhyHmpnXvC+UOLrfcGfAbUDHKKSMe5T
	 QBMlK9HwS3SWm6llEnqTTZYsEhKWdB+T0CsMXhHCyqMLqZyqUFj5yofPPHPTPy4sOr
	 kyzoolnQrv9qxnpKgB3d2gF4QpDhEIKqZdDLahCx6q5YxKRRyvE9zuFvLhYRAARu2L
	 JIhUBd5McML2HtPPNhkqVP23ygn+HMl4nX2sorlMOS2lieaamWRjW63/lnvc7Mccu0
	 HdChVogqOEIfyGHf4SIQBHgpqk+rvLNcFbnb8ZTQlpaosZHU+wyY+KT3Q7rDBYgnoM
	 KU+7al7aZkp7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52900C433FE
	for <ddprobe@lists.linux.dev>; Mon, 10 Oct 2022 08:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166539065333.6672.13314108697635601989.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 696a9d35fff5363cb269a64ff5b9b32a7977e7222f2a603968c0feaf119d5836
Date: Mon, 10 Oct 2022 08:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665390653
