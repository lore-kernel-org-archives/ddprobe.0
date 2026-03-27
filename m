Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FCCCE55A
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 21:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774648494; cv=none; b=i9VzeqB+Pzz8JntfsW4I4IUWkVTSF63vwf7IbQrF1/OHMhuCgiCa2Mt4uNxxp/sc7aZka//WzLzz3JxLR4bwNpu07LG3nXtkvLO7lX5BsfZxnpjPlwgEFBtDxwYxGuodRwtKUJTDAK6SO2CQg9jmgJ79cG1WvCBUBNBeqfaeCSw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774648494; c=relaxed/simple;
	bh=DqxNKD8vkQZjDhfv9ty1L9zzmeBwSQXCJqmegK4TbE0=;
	h=To:Subject:From:Message-Id:Date; b=PDIBxt5Rqi5Uf3fQBGDxh/w2uYGljqPf6Hbibj3oiWC3tHZ9staMT7aSEZ6/FeuNg+YbCaZ/fxIcY6GFF0qCJX3ItYYPNx+FQ9o//Q3SgAZv4EDHM5FDJ6YuwHBmA1GfeLJ3Ct77U2OLi1i0NXfem1dZfUNowjfQwCFJZ6Kn0Gc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=unYIkVSe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="unYIkVSe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC6B8C2BC86
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 21:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774648493;
	bh=DqxNKD8vkQZjDhfv9ty1L9zzmeBwSQXCJqmegK4TbE0=;
	h=To:Subject:From:Date:From;
	b=unYIkVSeQdY9LNS4v2meB4ca16pkXI6+CBtX/mKc/yNOjFviipPb1GozxKk2nWUyK
	 dsc8iHelUwKdhH94cwJcAaBXG2P+pknKOqjh5KSN+yWnDFLjgR3GCBksXfewexE4+M
	 FrOz7VrhW31/crj8FatxiU8LHWfO6OSappELDzz7/VgwoIz8rr9Ev3ViKAbNYpECUM
	 7B3fDwO227ESt2jv9u0t3zecqEgfEABKvBKprdc8LWqvwYAWy8yelNdNefOzABgnzH
	 KU6PFNAQ2ybkzm7k8jW8cW7pZAQmWla5pl+d3p+uH+IMZyjaH7z4GnclKM6/kirwev
	 V/4m3Nhmnw6BA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9650910F2865
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 21:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177464849359.15114.14649801834895083757.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 97979db7de822a9bd859eb885844d4ae75acaf182af2162bee57af134e9bee7e
Date: Fri, 27 Mar 2026 21:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774648493
