Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EA73107A5
	for <ddprobe@lists.linux.dev>; Tue, 16 May 2023 18:23:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E5F4CC433EF
	for <ddprobe@lists.linux.dev>; Tue, 16 May 2023 18:23:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684261385;
	bh=vtMMX4jen5kJK7tKekgDAo0tIGozABGyaPc3jgu03kg=;
	h=To:Subject:From:Date:From;
	b=OWM5J76nFFjtJMUB/Rmwjyjo5DgUh/O5WJpSwmWX5Df8rIi1oY0wjzqtBWquAv+Cm
	 du6V9DCsBWRo15C24+/ZxoLJNtCENQzG9KRbUKt0ruRBAf9CKicCV2yz3XG6C66z1L
	 yF8vWerdRgVTkfR9DdEMvwLhsAEM+s65yQV5gZjvqEpKb/8J1tiopXouoGUXx/OSDw
	 mP3gP1QlYmIcQT8j5Mjoc6CoNZbYWNgfUfuzDIwCq2oX3f3KbjE05WAc3NUV9uBoME
	 zp9g8uRahbpW85KBrLXph38+fAhlycFRIGBIi5OLQ4dytA8M1iwSjHchTgP1mg96si
	 F6lBjE8Zv8VfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CC873C77B7F
	for <ddprobe@lists.linux.dev>; Tue, 16 May 2023 18:23:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168426138583.20481.13371718670557437939.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 53c37b2de9611665172e08571840e2017b8dcc7e8d865596be4e97526307a55a
Date: Tue, 16 May 2023 18:23:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1684261385
