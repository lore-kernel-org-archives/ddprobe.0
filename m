Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 113EC321F26
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 15:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756481994; cv=none; b=nLyuuu2w3CRnJDN2pqC41j+9evxejOZ9Cj6sIc3NNH7ijrJTaQ+dmIIm1YKWkFzEJEVkYPk9gvTE8OBWOS3Bzuvzf/pn3yTlQ+ZK+SUer7TxLBzfDKvq2YOQyZ20HGypS7uIEgUBLxvPg4OmyGcbciBqViMAiBh20wlFdqcKAzg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756481994; c=relaxed/simple;
	bh=sXL6F9uSxfmo1D8Enq9Cbo+VHVlmwyIHnFAEBBt5ykY=;
	h=To:Subject:From:Message-Id:Date; b=pj6ODQb3YuEl9BGZnfKdapV63Uho82UBC2HaTLLWLQIFchltOJWYoxYI+AbQle80fM1uIj4jiUoYeyLtocU0Nszbwhwr+8Y0u7+5SNgYGdxSeWBFjHv5BSfcsFyMs48X6jRwdgZJXu4CC/kRxErG+rEoyE3zXWz8oRjF5RqySvc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PvNUXDpS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PvNUXDpS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EF44C4CEF0
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 15:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756481993;
	bh=sXL6F9uSxfmo1D8Enq9Cbo+VHVlmwyIHnFAEBBt5ykY=;
	h=To:Subject:From:Date:From;
	b=PvNUXDpSAP2tjlSa28WX+toaJkughQ/lqi/h2usiVung3lGubJnD9+xiuE6Oub6ge
	 XkfnKuFi3sQuOSvCKIyZWgtmQZfkbPx9UqGe29nPVuH576DPG0GbiYeE8I2go3OkbD
	 7Fq9rxP6XqZRR/vq94OfvdlHD/iio21RYlF/tvBwDEIzDf4awMkMu35HXqQ4w0NMsL
	 d+thAF/dIWMdqdmq5fUeS3SQrcXWmZiZ4JQzeqBqHtha6AZ0EC+1sanZWh1uKSy32a
	 tXOvQqIrZ01xEH3CZfx0NgH7s2CjmQn8qDv7E/kn9maxiaym0VY6VNHBpDid80Yhnf
	 IaqZF3k5KfFpw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F3ADCA0FF0
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 15:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175648199357.26368.729182981996032283.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b26fb6c3daac0b219bc905704ce115eca7766dbc9550ad5492d15a79a32fcbb7
Date: Fri, 29 Aug 2025 15:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756481993
