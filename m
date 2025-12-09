Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CBF623E356
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 20:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765312974; cv=none; b=Maue+Uzy9HiME3n5IBgZefWslRO23e8lfkxb6Y+ypg9juTUblSNKboQqRZOreQQO6MFWiPIQ9SfLH7WhQUCynZ0b2Zd3H4QOCcUl4pkzKveKao26D0KjBwFBVYYCVb5evWUt8qitiQSjxZr+udcCzWfvPIPo9GYj32Cd6ip2XsE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765312974; c=relaxed/simple;
	bh=4Ol37NG6kf9Ieu3CV/p7nD6shGOmKD2qm9qKnoR+ESc=;
	h=To:Subject:From:Message-Id:Date; b=EU8jjlOrNbFZZVpreeLPaZ7+GKgFPB0wuZR5mNmV+QRjXiRCw7p61vgCsWt90iM1/cGgQFDf9bvVq4f+tr8+KrKUrrlenng080JRUvIZaw7qYqLBpkSbt/lT+KORpKDdUMP0zTu5L25IfQlk2bZI9ZeqKELUU4oQf+eZVxuZ9Go=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Rtyxo9JM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Rtyxo9JM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A20CAC4CEF5
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 20:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765312973;
	bh=4Ol37NG6kf9Ieu3CV/p7nD6shGOmKD2qm9qKnoR+ESc=;
	h=To:Subject:From:Date:From;
	b=Rtyxo9JM/hAgr1bX5wu324hfFd6xE8KehhWXCueqXBheWjGP5I6HeO8aRRCBQahd+
	 GDYxtpUcVLWn/M1YU12X65di2kFXNaqSIVW4rrjjXf1vuHH3627z5vUpY5ZgYUgzo6
	 KuCjhfXVxmgaO6FoBkeJvigNId6uSU3yj9FYsF/tHKUjIvq6hDzNjBD3q5pFf/l2HE
	 syoQ45qeqryWG3oaUvwObG9zRQ1MVxXQq5wOM/wohmtjaNWcnTGR6wfyUQYLh3clKQ
	 NRSJNtVTSlrp7EWxf2r5OcK9xtoY2NZedSz4yDDygnKxOGYEbpEiWv9nsmymwKhmrh
	 V3g7jQwGHgPnQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90EB5D3B994
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 20:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176531297358.13813.3374346976597744073.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e2314961b3498ce9605eff0398353c9f59135528cb945abc59717efd4c43857c
Date: Tue, 09 Dec 2025 20:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765312973
