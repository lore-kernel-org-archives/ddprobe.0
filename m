Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 010C1274B2B
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 13:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776951454; cv=none; b=hYVqPSqV4fcPwCgRNOAPF95EkZ+Dti5+In52e/kkMRUOUp6NH7Wuj7GAoyG03Wm3GJd/LQrx1dvB3QPy1vLw9PBSBHgJlWnpKYnWIYQAL8oeopAT/ctcaXYNxI8970JGjKX+BEFOOhIFwcB4xFfmMBPrfvHDjh9l2tjSLo8s5cs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776951454; c=relaxed/simple;
	bh=Z+roGvWSmGCuPxOhgCjyXTnLY4Efu1mxTLMvdHymeBw=;
	h=To:Subject:From:Message-Id:Date; b=LzPtmRz38eVw+Rr7yt45vCdVz9jSK3sL9UBEQgHIVpv6avB4ZgvzAA3RP19VaBniN0bgY5LSUy0ZrDVGRJoU/NM081FbHWJTUOGQ6CwBjNMpW4RcdfB26TFAGdZTP3j9eIif8hlyzYmHEyMU21Go4nkgvS+A3Y3VhsAtuCbWtS0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=glgFHL4R; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="glgFHL4R"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B839AC2BCAF
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 13:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776951453;
	bh=Z+roGvWSmGCuPxOhgCjyXTnLY4Efu1mxTLMvdHymeBw=;
	h=To:Subject:From:Date:From;
	b=glgFHL4RpA1JDeuC9N6o2M3Q1i10XoCCdMmxe61ETSA2vM7q4UPNEE4aK5QZE1Jr4
	 //k+sHq4g1zOf3CcW+mErVaiQ2nQJfigo5rYFXrV0AKgaB/A/2CNqAvtBM4WhzMNqn
	 sXqLn0tzm/LoDc6aYm7xM8MkqcXBR0DbLxWHezyK7IjJSfKJCYfCcx1A2+WnQij4ov
	 zSWgtVAXX4aQEaUf8a3gdpadf/XATawMt/ryVpti68x3tWPSxh9xuu1a7a7bktj5vi
	 0FdU2gr5R7WkOLAhADSjoVpABDcn7WgP10SyM0oLhT22Ico+Z5amZ7I5GYpd6LBexv
	 i4HUh/9rqcxww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA26AF589D4
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 13:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177695145368.31658.5858337328845224476.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bcbded78a233bd3163ab34441f2598f1bbb9b66a3eb5d65193529326f77765cd
Date: Thu, 23 Apr 2026 13:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776951453
