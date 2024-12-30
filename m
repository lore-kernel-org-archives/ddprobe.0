Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E68312CD88
	for <ddprobe@lists.linux.dev>; Mon, 30 Dec 2024 06:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735538754; cv=none; b=u6d+V2jF00R7t9cklqpM8R81EGCwe8lk1ZTWRqcBoy3YL5jqG3ulQFtUECFmwsLLYCpMHynjFlf00LsEszCRgCW5JANFDtvAr4h54ZWep/y27pBgWf5WNv5qp/+KPXGOOrTHY/uvjghEuYRsXvn4eDaw/z/HcUNdeEs/p+bgX7w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735538754; c=relaxed/simple;
	bh=V1kElFdZM9yBOfiGVv8j9pVxe0gE+xg9tcMnb6GpdFk=;
	h=To:Subject:From:Message-Id:Date; b=MEPVTgr1c7RFq+xUEcLadSEis0pucioC2VLqXDetaGiGdvA8Nsjlt0eXRCeyJUo5c81laCauCuQMWVHrnwNDr1hZUqgITYs6dyBgMxQYX+yrdjwj3V3Bt9BJszCVoHIItjc1Zi5SRyYQd6kUqYWGy/JKkEpM8ZQOiGqVJ028pTo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XimaJwO3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XimaJwO3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEACEC4CED6
	for <ddprobe@lists.linux.dev>; Mon, 30 Dec 2024 06:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735538753;
	bh=V1kElFdZM9yBOfiGVv8j9pVxe0gE+xg9tcMnb6GpdFk=;
	h=To:Subject:From:Date:From;
	b=XimaJwO3QDtzNi4107B5NDgO4qLgx1nMKKOKj86yPBR4MmOenF13OipkiopSkuPtr
	 70xFGKksz8lMIxO7x9A8xPbigME1MEq7n9IjIVxY90mm8puvjaVKlj0MQsWI3J4NCF
	 kwHRZwhpNvEppAfP3uDiWoX0OdVlKbr90gv3fvDCmRS8tnvJeEaVEJxou5MjfJ2B7Q
	 jJXvWFk9BjH30UL539PmqzEN3WD9atvwICu2pFCPKSOFLNMDKfcW68I9h27HJkBdWt
	 HkiaqjDZJDuSLkuoSBhDkG5bYEbdnfIpe6BFiz06mOiYrYIP41Jx9ZHAd6g2Wf4Xb1
	 aR6cutUWF0imw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98BFFE77188
	for <ddprobe@lists.linux.dev>; Mon, 30 Dec 2024 06:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173553875360.18750.18161207049316019008.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bc6018b3123816014a44299764ea0c1e9229e514247712895e8565b3172a14c6
Date: Mon, 30 Dec 2024 06:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735538753
