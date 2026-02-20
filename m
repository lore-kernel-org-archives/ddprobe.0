Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32F943126D7
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 22:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771627494; cv=none; b=Q9/r+TomrtiPHxpOVoCZXIo7mIc88il1zAOKkfDbXoM1Ph5xQbFw4S9LRl12XzPTPj5Op6hcW1vcYTSAqcZvJhC+1BBZRNsfky7q11j+OkV+y25b5wXAldxYUrBGK5xQYr81gmf9eK3BjzFPZk7Mg32Q+avskkpwiYGNoakdR0U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771627494; c=relaxed/simple;
	bh=aEpTEBSvNWedpa/D9H4lJLfPa3rWoX5BZ+nxFLF6BC8=;
	h=To:Subject:From:Message-Id:Date; b=ONu5ngusH+Kc+V7daQUvk4zbZZoccn2Tecd+YDYoEcTqNeCGJzsQz5s6LnLR15EIdhFPRUqsxpPwdCYhH5h8v0y5NPiw8oESgDZOHt6WI7Ls7cAaHEwGJSRgUlDyS8d1rC/6v8+bLEicahJ8dvCGoIbdQK0FYPhzjQQNT+Forao=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rH2wsNnQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rH2wsNnQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9028C116C6
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 22:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771627493;
	bh=aEpTEBSvNWedpa/D9H4lJLfPa3rWoX5BZ+nxFLF6BC8=;
	h=To:Subject:From:Date:From;
	b=rH2wsNnQe7cteC/nZodqX1jAperCOAuqIJ8uN4D1rpBQe5hY25Gp+mQ39oM1EwDf8
	 4UzYR/Z7lLHSiyqWd6WGNZZXzwxuzRBRtUsU8c+xRLrxUs9w9ILgbhTDib0vszYqNO
	 v6b65wg7LgNumEKlndvsXDtQfIYfMd7SNDX4+VrNkGKUjz2DEY5lJupT8Sq1Ih28Jn
	 2ykFAUdD1NX1QloFtOEkmYSYmY2momqadOU6Gdsn3NqjIG76MZaTWlq7h934zFN3uG
	 1liBS/7ztgypyrGkJ+8EcQ6aI6zisRIk1lVEcTJQ/lZytBRdPqvnmsAOArMp00qEbx
	 zClwLcscDZxbA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1A12C5CFF1
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 22:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177162749365.23393.1310199142055400462.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d319b2f58b4acf3163acede723a6e290db26bc5195db9d0edb71b63a18a7fdef
Date: Fri, 20 Feb 2026 22:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771627493
