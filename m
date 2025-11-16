Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42DD720A5C4
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 04:20:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763266854; cv=none; b=i/O4GXcjs3liSe+C+g5JExEBmTIFNA2z9TLhOCuD9D8ZDnZN1pxBD4d8Qo1E2ytMydcbzMBEAu9e9WlYK9KRV3mVICowdp3dWJe2HFhVOkidNqIIsuB+ijZ7QblgT4UOsafjzDVlW4jDIQ6+W1ILi/q4b6YK7zysf3fXOdVwjbw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763266854; c=relaxed/simple;
	bh=6iE3t5V9edGmLjpd5tyx/Q9C6U9huTpCJEDEomFVvC0=;
	h=To:Subject:From:Message-Id:Date; b=kLpWh1vG2nDgnsnbjDJGZamB+HQUfVR93+xfb3v+CBN3Nzi+8i4bVkhlnk4Q6hvOUm9wTRaEwiXHGjVTCSjDjhS4OpQImfQ6NmyPA5kkjd09Uf6LifFFLiCbDfc13gVUncudenYzMOh33ih1nriRvQs8MBgKs4re2LZQdF8zS6A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cfWIAJBN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cfWIAJBN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C09F8C4CEF5
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 04:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763266853;
	bh=6iE3t5V9edGmLjpd5tyx/Q9C6U9huTpCJEDEomFVvC0=;
	h=To:Subject:From:Date:From;
	b=cfWIAJBNp5vZSXR9zO6cd0xZ4PStsuf/pCLlDB8kL8qNyonp7TQIXUeu9eHqIRIY7
	 8JFQwG6ePlnyVO9GuQyKvPEQ9xrjpQW99BHb+zf72bThMmtGcAWspKMLiWhLv4fJuo
	 4+1kEUuji6GBoSIoYPaNq1FO/eTqkir7zyteBPqXJcxjblsFbGWkQtLYErUsj2A7Rd
	 BG2CifD9ITufr1rZYZCC12UrE7yrwv37kckB3wjpQQfhFmWpoHQ1I+/l1ny0XIrAqh
	 UG11gg8M5MTNZeAmtSfqRUTOvTd/xXiuVhMO7br+VZHuQ6PX9slGDz5C7BqfP6+Sof
	 2A3nqv08UERQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A91C6CD4F3E
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 04:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176326685365.4062.946803289778023161.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 52c5676172f9180b2f43cfa554e30cfc07c1fba3885cbb9e603611797e98d4a5
Date: Sun, 16 Nov 2025 04:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763266853
