Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44509332615
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 14:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788012634; cv=none; b=ik/UvDWA+BextCdUTm+iJ6gN1UTIE8gDU5g58G+sUS25D+vzlPoXvihIRNrMbAoKDJiTI9Lj7+mhXCJQJq5Mb8iNHB2fI1aTsG9G5HWJHOCI2N1iIZVlTTAmAYxugbsYS2IQo4C7AsqdI+KqwaQv7WFJU7g6fGt5DFyKGTywbUk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788012634; c=relaxed/simple;
	bh=1B7uqFRqyoUYus/yRfWm4O75JuItytDuThReaYty5AA=;
	h=To:Subject:From:Message-Id:Date; b=j3zxakg/xMFTUfVgcpJHJlNpnMg9Kef4XEOiLlrUehT5j4JCjXmMmqPNCSPfiyXlEIgl4H1KZyRJYWFW+SqBVKRDJR4O/4CcR/e+8J7NyMviWgmaD7mExC0gUTefBsomKWdHegH58VTMspq7zfqTKhTHPA8qPbqiW4cnvz+WjvQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l2qd4WzC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l2qd4WzC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8CC7C2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 14:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788012633;
	bh=1B7uqFRqyoUYus/yRfWm4O75JuItytDuThReaYty5AA=;
	h=To:Subject:From:Date:From;
	b=l2qd4WzC48oJKKC2ghD+L7c+dJqU0qS1tvjMVkCHgpYy2cwFWDwo+6zF0zBowVMdq
	 1jqHbRFVs5BkUTpOxrx4OsBa7uY5efjEP6zS0T4oYDxZAk4hndepskg4J3bQ2VUe0/
	 8ahMNyRbH8f85jUbOPrar5Sk+sOtQjCPRwQ6AcA+49ohiexuIU90NLDRWWjZ79EN9x
	 gDTeHnSbTrz+W20XXuXiqDKC0svCyID48HwfyCCnIw5niSuTkvYovhTvwg8cHwy4Mu
	 E6dGVsYgwSwbDzTPm/xxEAilaE/z55U8ApC0K/BsoAjWRIm0Vhtn8o6kRU9241ir9k
	 O302Yf1R8lGPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD760C61DBE
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 14:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178801263368.29087.3482270289217086666.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cc69fb4fe7f96f4e15b0e6f1622d850688c8a2c3f5b59c02742adedd8ab124c2
Date: Sat, 29 Aug 2026 14:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788012633
