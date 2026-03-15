Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2989E296BD6
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 23:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773617694; cv=none; b=jDUYVL5dHnqu3eUBiQcM4vYg2xg57ysXlMB01SSNoU7PUowQ0iANkRl+Odv+pOCwowgPOGetisdEgUVmuoz4Sv8T55QYg4fc+twpNgjh3RGTcC4XxstN9PA9Qo6GIWgMXMo8LCarBquWW7ejsVpcgBsXN1VI2WNWTiY8JHuV5iY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773617694; c=relaxed/simple;
	bh=vn9G9mPLVXmIAbbii920PAoIy/S7P3y7A51BF1sST9M=;
	h=To:Subject:From:Message-Id:Date; b=Kwl7h41LJ9XG1xclWKCnZIGktLhWy+s21g8w4nYqfRi3HcegWOzlJmCvmkl7Gkq8Vm4I9WJFOCqLOXcHpLqFm3mjRreUYXvcbkXEpPMRKztLaeltYadEQ1+sF4K69D4TjXqJ9TjxZxRdZCNrJUUrjOTVywyVETfZqJZt6eNrCoY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HlxOeoPU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HlxOeoPU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6076C4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 23:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773617693;
	bh=vn9G9mPLVXmIAbbii920PAoIy/S7P3y7A51BF1sST9M=;
	h=To:Subject:From:Date:From;
	b=HlxOeoPUvUhRaq/WPDdZZ/lO6+P2VPSf1/2ouYDT8kcZqXO9IcpWsc9ECLUJQCBTw
	 tHnrtGeehmln4cJ3k89zTI7VJxMHRpXrmsyB2jGZg2NIJF9kJI3rz2Rf5FKOvXf8s1
	 eI3IjxC2Z+Ex285INFoj1oLmnKuDIgKP2mSNd15b1NNbDIBz57gPdsNCoo+UteCOrF
	 JqCJlDnfoeLmLGFwYHN0Y0dlkT06mGUEoqrYBy+PFw3N8PASUxkdZTHQXNO1JZwD9S
	 w81LG058c0HVi51o75k1abz22OgE1ETUDJOo6XW6oZ7gdEH43WE2rGD+NekX5eu+N/
	 1iLeb7ZBOxoEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94AC8F3028A
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 23:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177361769357.3706.15638344978664103427.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 091e37ca1a67e575749e761e615b454677509bdae114f59f81c5aabc3892685f
Date: Sun, 15 Mar 2026 23:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773617693
