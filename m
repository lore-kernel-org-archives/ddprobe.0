Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 385E315530C
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 18:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748198994; cv=none; b=XsWZjMW6/gzQjO/+y5Wq8AW6k3Mgr0NHWF4/X69skvwk+Qow5t6iSu1gGb6OzDx8z91sk+jCdcrdcraIW2UnMnYPg7sa0rVKNvYeo48cIfwLS5LqdLoCL9lOVbCySqG9k1DkFe/tHQl1nWvMF6QSdYO9L1LT3wHsk8vHVZjCvwQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748198994; c=relaxed/simple;
	bh=9qGf7NGGXz887fF18mOZZmkeo9THA0Fev6R3RBzTKxg=;
	h=To:Subject:From:Message-Id:Date; b=CL5L6MYKPUkRWbJMnlNux5yAVLof51R3odfxHqkBPIYdqnkxknORhs5ls1LLy2sZsxcYzpG2Lqb3yloydXaF56srQK3SGwns4ZSzgOHLc+m7tnI8mzIap7oifKNpwHfvBH9gr0lTXFu3QpDkD3DqL5QGBikTrIRfUko7SrIl8xo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i6qqLytc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i6qqLytc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A865CC4CEEA
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 18:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748198993;
	bh=9qGf7NGGXz887fF18mOZZmkeo9THA0Fev6R3RBzTKxg=;
	h=To:Subject:From:Date:From;
	b=i6qqLytcOmXFLyKkh0wz62F+4NQzBpVAkr/REywPNf2Pv1ETQXOa8o5sXAvMTFoPw
	 kWZZvtclQ6xxcGGXmzL/uMoAwJz88eQK2QAC2pKhsmgI8/ZNHfVNV7Q9Y8SFXAH9er
	 ekH/R5A24TEnUwScefeY4Dy3WFxbY2r5yLJv8Fs9zXKNnj4XsruhdDh2Q2Qu/KXi1s
	 bmUEg77VK5tlnfyO1VV379primMz8mmbQyyCSDKajD4hbRrdD8naDQvab+uRuUUI+n
	 t0Na0LTaE5R6PMQgQj+55+w4N6s5z8f+ZY2Na7a1iarkQKdW2RoMTBCo6fUZCxap8v
	 bWU5f0GmHR0sA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92CE2C54ED0
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 18:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174819899358.9271.18375364091449672630.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5940f178588f0fbdaa6c81d30fa21befd366b9eac73f1ca9d8e926d0d01d528d
Date: Sun, 25 May 2025 18:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748198993
