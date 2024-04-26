Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 569DC3BBC1
	for <ddprobe@lists.linux.dev>; Fri, 26 Apr 2024 23:42:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714174943; cv=none; b=OfniYEhyBjzWShQdEYm1EziZ+MaizmiMqb+91nG7v2jAJ6ntvpqLtdEBG7jc+6EEH/M8H0yPHPhCgnx5xXxdFf2BmjjGa/iX0xQzXTYV43db11o/zi7FcrkXTgAWGH0t1mnjN8uK2UEhbwD9pJr1Gbj2FbC2bb4LcOX0ddP3rCs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714174943; c=relaxed/simple;
	bh=81IUcaSNRPNxeVdZI62xOcQcgfl014d85omuBS+/ICg=;
	h=To:Subject:From:Message-Id:Date; b=PuTvKe1ZrksvLJXhCZ3Ccxq2+mNWm/R+klOnb7+4ktczCQhLllCVLc9rkSLTLyLnbLJb0Pg6lSS31kSGaWPXMf7Dh0feGt7ay9K0ywSPmbB72TMYtUnaQRTvMXTLzmrs9QHh4QcDGbGAJaOidzKQcSHNOUEF7+PqnUibFRNP6S4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nHfW7tUH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nHfW7tUH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF347C113CD
	for <ddprobe@lists.linux.dev>; Fri, 26 Apr 2024 23:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714174942;
	bh=81IUcaSNRPNxeVdZI62xOcQcgfl014d85omuBS+/ICg=;
	h=To:Subject:From:Date:From;
	b=nHfW7tUHTkqtj8lbfvQAXUxl6ycMF3Aw1h95fx7w4FRwR7Qew6Kl4zTh5wQ9sF5MV
	 tmLZFmXPba7fUkm+VuJfyU75zyFqQ5tZaET5Mcbjo7V24aYGO/IxNdssfOqLjYQtvv
	 KU5IRdBsaprDFESWB09Jwm++oPPx1/gCe0GRK70GqqQ4vd9IxtZeJf9oWFcf+APDhP
	 +7RiPvzQcLcoT4e0ZXlNIjCy0UUfTOnofGsSICnKrnAn8VP6H0fEWrOrRVUHaSyBPw
	 bMJdoZGaQpTwjqfN0Ssmh3K8hX2RsR3Tw5mxHZUTn7024la3nZX34J2cmCGjn3xXd0
	 /Z4TgBE5dS08g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB60CC4345F
	for <ddprobe@lists.linux.dev>; Fri, 26 Apr 2024 23:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171417494275.4500.8670085425136624910.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 53a6661fc8fa913eb07ac0ddcc6726c16649349a817311d9748cbe0d6895cea5
Date: Fri, 26 Apr 2024 23:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714174942
