Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DCAA1EB5F8
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 06:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771482894; cv=none; b=fgHIBQf3jA3WvCl6oIwIU6pWSZl3TvP2a60mX/iZuPo1jM730C+XLwLhkZxtLL7Ts9ZSg9Nj9tnDD5qIorrc1E24aZSn0mWMg3j/QnIpwToGtxst/Anm9cYfqfF/yRkn9/3OWC3sJN16TKzNDeMltwgdONMNrDDEh2IeU5P+DcY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771482894; c=relaxed/simple;
	bh=AExzPfiySaEwlbQowyhG53oQim5dY+SM81wlWwFFjDg=;
	h=To:Subject:From:Message-Id:Date; b=ZBXd0TgF16S2HIEspb+TI+iYpcvJPmHO8D6SXHQFc7pUR0ZTK+Qz3XdmqL0epuU0N2m97H+Fs/Vda6aqB26riQoFrBDiLI82Hx4UoFnl+xT5fuH35DB1uFtqeu1SerMuRT2ie9ohCbCvCXVdEzkIHmfCNsr1MtRmVuMFwGiwtt0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BljI6hbR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BljI6hbR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCC4AC4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 06:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771482893;
	bh=AExzPfiySaEwlbQowyhG53oQim5dY+SM81wlWwFFjDg=;
	h=To:Subject:From:Date:From;
	b=BljI6hbRotcaeraF6HMa1ZyJG4B4osNaFA/m20qKBJWoAefB/ko6QJ6h5DAEvQqnR
	 J0nvmK27sOh1dqK2ZXXOjBPqfktNr0nH3cKFMB3jjJaaEe3MXRwV6utCQTviHPrvEV
	 yE2vqiQqGqd3PcP45COtVLOjTwDEZvJO4+stuEMv6Ji84riqbdowqYFQfcPa9WUPAM
	 zhsK0YcJ6vTieUQbJtevZls68Ic96gQzw19BOH2s5gPX6ivwJeyMfpqVcIJ2w/ZL/w
	 fX+TRs3aPQ7EwB0eDwYulxppHIOj7tdymHbW5wlqExM2pN+1zbPn/1zpXAj6eoR1LL
	 OMLvd7dYGpWmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9EE85E9A03B
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 06:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177148289362.452.16923767253594067781.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 03ba5e6883d525a5e431e4404b2b71956760dbf3bb5d3e6f57c0151517d3ef97
Date: Thu, 19 Feb 2026 06:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771482893
