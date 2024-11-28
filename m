Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4186283CC1
	for <ddprobe@lists.linux.dev>; Thu, 28 Nov 2024 08:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732781754; cv=none; b=lG7tB+1Y0FXcDCuvHOvEcK7ZKZiW5vqWIpF8bl4VeqdIjTDAKnpM4MTulcNmyG9Iew+hdowovfiRZSDOd6eM7hkExrchYYe3FmQ1iq3vh/MtmKLBKm9xfMEJZw8sCFBMjyGBSPNgdjC6WxAi5YYf6307GCPnTJn5dlFwxpErIZI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732781754; c=relaxed/simple;
	bh=+1X4u7Xm+PRJUeL4bk+mPSAxd5BgpujsaIV/FxrOhOM=;
	h=To:Subject:From:Message-Id:Date; b=rcQiSFhMqoDt1TJBNJBrm3jHG4eEATkY3izqZ5UmyrHA+auJieM5qzUV+b8vAyQrJtVB++tCVVn7QXEk/DrnGqp+aNL+YvwxitGi9AquNBQ+w5aR+JTP/+tuY56v4pi7+N8dGbyvG6VAwDS+ktj0d+r56jKpuJpEWY/kHknb0oU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Fr2cfiam; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Fr2cfiam"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCA44C4CECE
	for <ddprobe@lists.linux.dev>; Thu, 28 Nov 2024 08:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732781753;
	bh=+1X4u7Xm+PRJUeL4bk+mPSAxd5BgpujsaIV/FxrOhOM=;
	h=To:Subject:From:Date:From;
	b=Fr2cfiamHh7n8ccbtpZAYmAj3Rmq//YkKrx1gLd9NRCZAq8WRrD5ocacxd1TIi2YK
	 OaAj3+SZIKXeDnY8j8pUpRO1ZOJQCdVEQrUaHoWd6hA8bJcn5sku+9yIgdbBHvv65C
	 p7VraueOTm9S1v7AJinaL/Cy3dLqKJOvw+XI6GrPBpRCwjZLaIfSYlqn7HNDp6IJ3J
	 vXKBBYFUlE7KDHfufmm+ngdF04MSmH/n5cYMssnPFlnVgkskjVGrg3urwWELiLk0fj
	 nbN2c6FndFpWEQbV86RtCEkZq5k3GEZaQlAJPppia/E27glhVhHSLm+PkYWZB8zKiz
	 KVns5iFOnc5bw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C534D690E8
	for <ddprobe@lists.linux.dev>; Thu, 28 Nov 2024 08:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173278175363.2895.15021072857498830246.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7e3e67fe588de759914dad66099353a47d4915db63003a8b941672dafbf90796
Date: Thu, 28 Nov 2024 08:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732781753
