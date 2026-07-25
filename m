Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5CF2319E7F7
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 23:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785022834; cv=none; b=JURz/sTDrKHQf5BXeOvfLbI3HZGBuLlC1ERpbxSh9tBXUkOGareAEibr5cpw4b91vQ2WSV+22Xx5g8VKHCjD7aDudVK6OJJoHZ58g1AkE5dW6GujEIJT9zueLoav/fWq3npRYHHA6EgOQ9f9GuBKSwD6ZhcCgKx8Im3vEoUvCOs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785022834; c=relaxed/simple;
	bh=djNDPWGSHRFtWw2+07vTyZkrfeX9DlxDBOHv2CKx4aI=;
	h=To:Subject:From:Message-Id:Date; b=sqZz9EwO4mIJUPE90Jvh5jHlQ167uKNLzYfPITB6HgHrD6Ii4FF4lKM4weIVoPLlXKFh9s9wnZUll/OjhqIOAfotFGFrHrH/FlFAzyEb4zE3R87MvNkCg2KPJjfx37/NUd2OE5YnCGhdkhqZiGeK/jqh2K1no0pIeHnVUJEZ2Yg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qfeeHYt5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qfeeHYt5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D24DDC2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 23:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785022833;
	bh=djNDPWGSHRFtWw2+07vTyZkrfeX9DlxDBOHv2CKx4aI=;
	h=To:Subject:From:Date:From;
	b=qfeeHYt5CaoWglYcw9GPeodZsqcdMYGOeRsn2KsDF7yXTX1n+ulKpQDHkL4gXrmCi
	 kD88n32jbOOGL33HfLH97oDvoBIGFF8hxAHhWfP6KTMsNG4wyVl76cvsErtJYJHiAx
	 ZDbAEqXsGtdZlKmUesw5Sy1NXFX+S3mwDS4fFxhRzp6pizvClZcK/onSBZv6wjPKTD
	 S05tCC+Mb/6yG5tE18l+z0RXXcBQaupdYgctM1uwz+s1wbzIlO/vozBsqNQznt9wV6
	 mvbCeiUuRyiHk+IwLwl0NhPNrvE8nN9xG00yO5GF3DmJN6h1w9OnrK4agRY3/FeMpm
	 Byu6Bk+blPXqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACF0BC531D0
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 23:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178502283368.17800.4245818011264923371.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 35d26214ebe809567566de26f4df1941a3e0e4d07f0f716b7a69d55f40b123c2
Date: Sat, 25 Jul 2026 23:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785022833
