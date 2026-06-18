Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 349CE2D0C7B
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 22:16:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781820994; cv=none; b=mPhMFMXeRvHnmV97yTaabR2traEoHp1cXBTZxG4qIlHXm0oKYPqg1zC7sJNLq3yJWauO8sAw2waHnrLBUwrClIJjo/SgKMsc1lSJStL7/gFOtVv2OAFQ07kw7YDdx6q+vI9kbqsyzMxUzeW+bDDxe8G36496DU4Hj1oi7Vm55ww=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781820994; c=relaxed/simple;
	bh=Z0s/7O16MyhGMNHcQF2K6Y4FnoDcnVsNO7rENidvnng=;
	h=To:Subject:From:Message-Id:Date; b=Smz69KfGcatOOBLAv35lmHA7EfrJPt7mNqSnqnM9U68yK2Sv2t3JeZCEo7Da53jWRhWDT7NFEiGaOWa8kHvediX9tIsF2TN0t0cuR95ueBTgZSPw1tMr7q2CNUF550eOAioVhZaXoSClyTn6oCFpmoyNFlGddPKQ6yTL2908t2Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Lmc0FRaR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Lmc0FRaR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCF7AC2BCB0
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 22:16:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781820993;
	bh=Z0s/7O16MyhGMNHcQF2K6Y4FnoDcnVsNO7rENidvnng=;
	h=To:Subject:From:Date:From;
	b=Lmc0FRaRZH2DgXDTZqTAVXtVWxk5JsYnPp34qOj8rPB8qHTCK8g705hWb+X65uNFg
	 XtVf9YsqDBZHy9DC5dYWLxS7RsmgLx50yZ///eu3PevLNy5ERMoovfEbuVO52Na040
	 UWVzZEPMZD1Vkm+ir8NuSFzwYBd0/jNoD5EQPQFCWC30FTVhzRp5ZR3DUHKMBr5BYm
	 TkZc2ru/mznfeNkROX59hh8klf1QpJIF3/3R/WtBsF1ebuUEZKIFgswYODAVpEdhBn
	 DOXbwlFuQ5X+Uq5VNpSPw6EmDscF9tVkCmj2zkPYXNiIQAt9c78E4pILEgt7drW/G8
	 6N7ejxLAb2jPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD4ADCD98ED
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 22:16:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178182099368.16209.16268596210598384799.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9da31aa7eab769d3a724f56191c8ece9a6541f861356d2acda62c8ac61ab7f5e
Date: Thu, 18 Jun 2026 22:16:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781820993
