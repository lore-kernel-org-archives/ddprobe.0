Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 735DA5FEED
	for <ddprobe@lists.linux.dev>; Wed, 21 Aug 2024 17:15:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724260554; cv=none; b=HgyqhkUmWn48czgt+kAPPVFBjk9Q+QJn0aBlyq1UBBPXZJW8XwEyOXLuf+58t9Oq0LIkC6iAV9QNh8KMqaDLeyeNFgTVL/AxWt9a5iNtbn+urgxO0np3bwsuwKPmNiL2FQ+3tAQ/xcd/bJBb0GVs6kmKk/6mQWVdmvBIG+x5UVU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724260554; c=relaxed/simple;
	bh=I7jvxKycQ5JjFnANPsCFKuYCQvYaZgvJJ7e7yKc3Euw=;
	h=To:Subject:From:Message-Id:Date; b=o7a4CRzrU+zJk3BlpJZHe7BNFRIZ8thUvJWvXJajqmst4HtBLyiZYhTJfocuJUvTyUHPCMJ8GE07jANphJJ9drqfpT0/gFkXnWKXg83AZRtM0kwZIU3euY3awyFfOgjmsY7i2aF0LNh4ceIUQojCS3Sj3xp3SkCsG60z7uTjWaA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CVTZ4FPO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CVTZ4FPO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C857FC4AF09
	for <ddprobe@lists.linux.dev>; Wed, 21 Aug 2024 17:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724260553;
	bh=I7jvxKycQ5JjFnANPsCFKuYCQvYaZgvJJ7e7yKc3Euw=;
	h=To:Subject:From:Date:From;
	b=CVTZ4FPOweS8ZlM0X3cxb8s0JtK4Q2NYTl7KUBo3FIqqBfeKXrRDDunrlG9RNFBrM
	 R8BDNdT2Oh/aQLhrBeQHKwuArJPpQ9CBnUN94iFabc9rVZW1X7hfNUTb20A6pDz9q3
	 J9TO6F9lcGhLEnrblpo9sbTopaT2ZmOjE11TeZpTVVQYN6GTQf17prU29/8yGH2PlM
	 qxU/hcGdQY4e2jUMRu4859FEFhw5PDoxUmDylabnAcvaxtT6vRlL4+MhVMJYl9tmG+
	 5x3ifrvGiJqwOCHhKBBvVADI+0Msk9VYt2AigWRzlkC8C2uwwerRmjaxeKIcBBI1/T
	 2OB/BNbI95FyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D897C531DC
	for <ddprobe@lists.linux.dev>; Wed, 21 Aug 2024 17:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172426055360.13605.10416794196316641589.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e6988789508e3e376a0f5717593d68b2974b898495847a75fbbc745e631b6f3c
Date: Wed, 21 Aug 2024 17:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724260553
