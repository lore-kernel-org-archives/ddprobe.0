Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C8D51E4AB
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 15:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747582795; cv=none; b=QAezW8Gwa6qXuKTVuR9W2OPAOxHkuuu96p5lf9nlOUNbwZanYqwe9UXpNeHIl8/0oIgsSXHoIclFnEeYjnk9/XFMtQJlB+9wdNFmshHxTvMNWPrcMbCn5Jm+Riz+3mbOb+/3ZqUdL+SNX3C4wglMX7L6P0ch/jHChOCXHE+URNw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747582795; c=relaxed/simple;
	bh=Q6aKt0BtYLHMqVuBAsfUqgnfLCBpvasgUfNaORR9YI0=;
	h=To:Subject:From:Message-Id:Date; b=NZW+5BcreOTyFAP17qKloK0FiVEy3zDD7cTFT9G85JJIuEhspUmfIVBXOYny+jL5vpjmuS3WfMOoOugmwz0/qhoEGT9q9/hXxVKD7kTzG0Dk4ISCaryKG8PUK9Q78RrYBkCcOPoTFfdkBZIhXfO6k39UaxJjBJUx2COoyJE1Rlw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eLT8P4JI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eLT8P4JI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9209C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 15:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747582793;
	bh=Q6aKt0BtYLHMqVuBAsfUqgnfLCBpvasgUfNaORR9YI0=;
	h=To:Subject:From:Date:From;
	b=eLT8P4JIEjOhsiQ+gTwsmaM1FoHOCxyuXe3FB3HldnDR2v0R42ys01C/hQxwtD2N8
	 0IsLouXUUrcuW61y9m2Pql9D+g/DP3fGmToKYpHly55Z6tRObi03w4ecVGKCm0yan1
	 4i800xjdv3xdd+L0t1gH2EHcTCn6fVSpJwWRfCg22bTvvm2qWHsT06abdAdYfshxqP
	 bVgx0NNt2ZiNOuDDArh39Kw5iJoyWFlj2gKI7/le5K32nYHv9gv2ZPWCZjb9oRcH8W
	 mdr3ihry2buKBnmNW0HZ2yGuGzJOqCHyF5RXZdrA1g8EqqKppYsAOQnLH4buCDDBff
	 nO9/VFLsLcW1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9287EC3ABD8
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 15:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174758279358.3955.1422543767847987914.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 57c7bc48a08a4ad0fa77fe5fa22cdd3ebcc7dce06defa053195df201231c2bc9
Date: Sun, 18 May 2025 15:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747582793
