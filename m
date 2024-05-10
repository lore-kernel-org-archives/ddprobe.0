Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D7291442EF
	for <ddprobe@lists.linux.dev>; Fri, 10 May 2024 02:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715308343; cv=none; b=AJ4TVREH8lHxTNVTOTe/IbZ8jQzYwf4m8p5rlCsVJuo6oFp6Iq6Rkbb595f2Uq5cz/Dq4cuy2xgiIgl2Ntzj0kp6Fkxa0deSJ780SHDRtG7TPXB6Y/mF55WjlJIW4opTZa47Y+BE3fjhfeFrI1E2ERs7q6xO8KJuoO9E3KY+lco=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715308343; c=relaxed/simple;
	bh=fFXhxzMU5gdK2uXvbvMl0aTqI1KXS3TEpWG3et1H1l0=;
	h=To:Subject:From:Message-Id:Date; b=a7K+sAl8IS1VE4/HWrbPbivipvJfPUfYGqIJ8VSfDCLI2d17A+e4cz9igUIMiS1HcBQ3f6Q44HqKQpe3vqVUL6d/oRwMJAStMGc5d9uGuZKZELSIMrza4Inxn8P+ha/nvSj2d3Fcdt7NSsqek/LkM2lzdB8kH+mxv8f5KEBWug0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=byENx2e/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="byENx2e/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E96C3C2BBFC
	for <ddprobe@lists.linux.dev>; Fri, 10 May 2024 02:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715308342;
	bh=fFXhxzMU5gdK2uXvbvMl0aTqI1KXS3TEpWG3et1H1l0=;
	h=To:Subject:From:Date:From;
	b=byENx2e/WqYfpm67rGxva0/+JzJ/OruREjhYKANAMas/jzZRbEqhn44jouLsNwHd1
	 +caF19Hr3xIy8ouvg/NNtMihSXxu3t/xADyJePG7TjmuR6fv5l3w7du3O5kBxNjsRe
	 JdRDjz6dNnD0ALSLdSq0Xn63+gS0Fc5UlqySkaFfjuSmXnG1eCUIuVLfUJVAj+2158
	 A+L2nYwYsHgEvaJuB56CYhy9LnIJ/dNx8LYCL9fWcS+gYaPiIcQqAj88dbvfBsOlGn
	 ZxmSmVuThLaB7mEx060sav/ooFNU+vp2UikvbA8/QtooJUX50qq8keTGFm7/Jqjlxe
	 c+mqhEMgL4iVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D2994C25B79
	for <ddprobe@lists.linux.dev>; Fri, 10 May 2024 02:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171530834285.1923.6024589172728085831.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b6eb0c0241b885165521c817df6689578a43e1a31692449b43c47c424a833017
Date: Fri, 10 May 2024 02:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715308342
