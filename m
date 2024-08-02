Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 363D0175D2B
	for <ddprobe@lists.linux.dev>; Fri,  2 Aug 2024 15:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722612354; cv=none; b=lUOuYslhUrr8rlNJxY9ZYFNFurBi5WxzquZfUcpQduSw6mVQhOPqXQx9tK/2vQJz4WUASCAt9gn0GRxKTN9XEiYp/sfaCsYIMjfrFG/mM/k2Dq/ro2XDJa0rBHAIU+hirMNoOrlcmjOwzSYsN/4cEWuK719XBM20zf/ZjPYE6nE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722612354; c=relaxed/simple;
	bh=VQsgU52Fqd7RmRsZgslOO6iEAr/bRnUXInhnqDqRc+s=;
	h=To:Subject:From:Message-Id:Date; b=sX9bgXh3y4KzxTexjp4WT/z0XgiHE+3RuiWWWfSam6pCDbNpifXKMiB6fIdw957at/iZqHQhgmzgAoVm+nKg6Hm9Qfkbv/TdGCObCf6KC8npbGZlzdJICd89J3042ktrk6i1QZD0tOrzfXYo0bCXGWdVU5CwNob9U/PXl3RZhgQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T3AZoiQ+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T3AZoiQ+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE696C32782
	for <ddprobe@lists.linux.dev>; Fri,  2 Aug 2024 15:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722612353;
	bh=VQsgU52Fqd7RmRsZgslOO6iEAr/bRnUXInhnqDqRc+s=;
	h=To:Subject:From:Date:From;
	b=T3AZoiQ+b/IdQuzlxSRx8toGe9gElI5rwfDJcGr19dlZiKXXIMsfEfmBhYsrvlOpd
	 fUluxvnzz1QGfXDI8D+rNL/OTXq7pxAba6BBj2Mo1xcMLUx+QejJfj0KyRI6oJtknf
	 NpWZq0QKWmvULp+pDbL5RL97EQwHh9+Yhgo6QincIV5Lps/QCwRhbrlQwEPnSAXW6R
	 joARWnmVIk2I0eVtGWtUIKwnX+vUeHQgyRgA1abH8m+/msp90WNcHmuZDyp+RZ0Vj4
	 Pd1hgGlFCDAgT5SOkuKW/i6cPluEB3FoLiJ6xhzYCJe8ueyEXRS7ufAsAgjJ7Oo5K6
	 TIii9F0PqDdeg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB4F3C52D6F
	for <ddprobe@lists.linux.dev>; Fri,  2 Aug 2024 15:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172261235369.29238.11067489793884954612.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8267631337b10aa37a53713db7fc6a53211f101dac042eb172a8780cb6ca243e
Date: Fri, 02 Aug 2024 15:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722612353
