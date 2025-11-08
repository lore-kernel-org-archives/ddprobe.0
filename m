Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26FC42B9B9
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 07:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762587594; cv=none; b=KHb3CTNTS4e5wBIHVNiVJb3K72Xx6T9oWMolMJZQHoSBlgIjqe5yfmbLMyTU0zKdZ3/557JfIyLrG3qewe1wdqA8eb8L75Nw1hOvNbUvg+/+7+lBdh3FRHLJCJ5Ed03FJCccYSila2dvFNXc8EUexZmC0W48O1KkGiK9E0ou2hQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762587594; c=relaxed/simple;
	bh=nLbA0evFEG3UMtdLzd1dihHLMJvvTECg9dAwc6Ftf7M=;
	h=To:Subject:From:Message-Id:Date; b=jxH8s6DmOUS6DVy7yLAh825HZVjdfPzXILh3k3vjLG2qej07YCKOLMhw12iqfsEGUA3ilXBh1Jyjw7PEN5HZJXX5HrFYzkySxx41S+Mk7RI1dGdH7qvzSB0mAaFB3p7JVV7LrB7XrAVx/K93P9Jrrp/5njrPJbmC4bAI9a2i2bU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XSQWbHOf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XSQWbHOf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A408AC19423
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 07:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762587593;
	bh=nLbA0evFEG3UMtdLzd1dihHLMJvvTECg9dAwc6Ftf7M=;
	h=To:Subject:From:Date:From;
	b=XSQWbHOfawhMH9+2vcecfGC/dlvn5vPuQvc1opyAY3fxtkMW8jvg/Tm2HSNK1YUoj
	 Yxha1Z13wl1glB8V2HVjj6rVPoWvnaGlP00cbHeuGRMc7HVtX8m7ht11bkFw8Mi0h6
	 DzqjkaGYrCtVsnXK6m+ZvEddl7solXt6RIjHhlYcT6hol/TVU0CUR30+ml7ac1LL8E
	 VWpjuTsKjikGJE6d8+m21TijfM4xK8cXuSvXNHyuSomJqrxk1nbOFltxdkmzb9b7m4
	 4jBqxAjTQkXHOUejABWhe5DPgtkHFUCNpMn4Y0HHMYr6hdxHS8Tl+i8EPrF6mMBbzx
	 ygw1pgylwCTyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 947D0CCFA18
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 07:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176258759358.28914.1304705974728830957.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 479db6d30d446fa2316b51d125a09614959693cae3437adf407812812156186c
Date: Sat, 08 Nov 2025 07:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762587593
