Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1182B22CF30
	for <ddprobe@lists.linux.dev>; Mon, 13 Jan 2025 12:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736769954; cv=none; b=c7QZcw7wl/+MNxZOUQZS6vwoKtNhuSmqd/PR5NgYdCq7wCsHO7rt7MfkgVv+sMd6qtiTrOC6jmOpbR5iaI758R8uJwsnOOe/jP4WY5aOqDj8h9LDofF/1IhEs22PtDJaWBKySEYPmBMfvgF0TD0IpA2HWJ6rMjKebmO88bgKXJE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736769954; c=relaxed/simple;
	bh=IGJbnZuFD1GgctS/T5WcJgrfiKtMjmzhFNNN+kSwnIY=;
	h=To:Subject:From:Message-Id:Date; b=tvFSI1AkOhM4wQ+U577Jgh1BztWAr3qMfotus3eNrqcLqCZd6HT2HGnw755fHQysk5rWep352zsXmzYbXrZprcJNQiQGFbNQqZbU2+MG6u/8UtqcnZ+PgNbmjf/YySfrXA4WpeLTw3YYGcvUTSDODeo5DxQZ7r1fyI0+NZ72hHk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cgTOs2s2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cgTOs2s2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DADEC4CED6
	for <ddprobe@lists.linux.dev>; Mon, 13 Jan 2025 12:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736769953;
	bh=IGJbnZuFD1GgctS/T5WcJgrfiKtMjmzhFNNN+kSwnIY=;
	h=To:Subject:From:Date:From;
	b=cgTOs2s2wHZbIvm3UlJ4TQqqYjHl7V3sH3NpijD7iSu5ukv8PLNCOc5D/Wcp9jyG2
	 AlLacJn/FJ2nJfNBVUWQbHuVy39IGUFMI6yysvB6LbMmpwCy1PqlMBuhq5aJcRwKBx
	 E9vvjKJy46zj8CrDqVTPZ+MyI6iYUOWX0Bf5Fc1mAGpbbUvGNKEvGddhcsGOSxT7Pg
	 kbmY3gOQ0Ucv2UjKROjJyZr5WVQKDyLBVq7cINo96Bo4JR5hl/fkJUaw+Zsr54OkPo
	 qLaauuzSNXrAwyK9SrnVscKAqWsZQ6z4XWPyQOaOt32g5aO6DN+U1AEn2ceNd2OoMz
	 NCGxNdgXJ0KRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9074CE7719F
	for <ddprobe@lists.linux.dev>; Mon, 13 Jan 2025 12:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173676995358.25763.4635088356023703182.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 91e06ef4800db403e565f23247959f2bd532a8e975f7592aa0f1b6037164eddb
Date: Mon, 13 Jan 2025 12:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736769953
