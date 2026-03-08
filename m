Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24BDB288C0E
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 15:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772983494; cv=none; b=LMLr8AdQIvqqyTxFf+6VbdjhL+xIJWOOcz+UPfQ45Wk0XEWOtzHIvwUrWxOv8I+dtLA93Q9fQHMrIhyt5NEGX4ARWSG+ggIG/Y3fu6i25g/rdXKcmHlHP9Vi5dY2YLolsUoC+xlmUmn9m4ZpF+kfcqzcY370DGwyB56rlvBnxBs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772983494; c=relaxed/simple;
	bh=rS4eodwyCbZ0WpYNjGzms2ycPGH7CGaXdM7OHAu3rEw=;
	h=To:Subject:From:Message-Id:Date; b=TW+yDneIgFCfi5bOBQMMLNLeUAG5NVrGo6bcVXWNAqKyQEc6d60hATp7qRh1QQz4iCT0mkFrrvowjWKAxQu0jNoHFER6Y8PdNa4W1WCSayAA80879dWGmcLdwrG0Bu+1O/HwAhemx8MGG5MW5pF5wjPZQpA22gf/IKVVH7KdVms=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MSSB3A2H; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MSSB3A2H"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A259FC116C6
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 15:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772983493;
	bh=rS4eodwyCbZ0WpYNjGzms2ycPGH7CGaXdM7OHAu3rEw=;
	h=To:Subject:From:Date:From;
	b=MSSB3A2H1VTVHCaXh5Dj31nG/lpd5WlhlbDPKIzxj6zKUHPAWSdGqiVGkLzq4XYpA
	 loQfuw57lmjT4aA49CuBk5VWmFqu3XLhj7sJzWImyKcaRQOjLGqoBWRXBY5BQfFGI4
	 bBZBcXS6SSsaGvLAEHu5qIpMraRJUPE8hYZRhs9ZVpEXkkTOPo+vhI3K08/d4+WNCJ
	 5AQEGTAte7N4U1UloTfUD7oTXFbzBlBdh6fJriiOmkSnOyCwC5e9SixvW8/j/g5czZ
	 dYrmoF1QErFfbC0RnDQVK8nylvrU2PoBGgmf0In/Vna7HEICJSO0H7n89QcN6yStk3
	 2OZjWBrbfsWAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E98FEA8529
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 15:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177298349357.3180.3459829398315661409.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e716d5d03685a13f3dcd5bf57cc50fa7d258faa79a3ad607af9457371596bede
Date: Sun, 08 Mar 2026 15:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772983493
