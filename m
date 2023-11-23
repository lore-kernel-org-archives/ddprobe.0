Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 03D53BA22
	for <ddprobe@lists.linux.dev>; Thu, 23 Nov 2023 04:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="roRUzMjq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7FF51C433C8
	for <ddprobe@lists.linux.dev>; Thu, 23 Nov 2023 04:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700713096;
	bh=l4ksbxxeUj2sfs++EC68+UQqLbA36f1KAiRcqtIaVnE=;
	h=To:Subject:From:Date:From;
	b=roRUzMjqKabIyTPaS1BVhpnc0oBkuDicEusNU5OFq0tX/cLE66tl0hvfdPZIO7Nr0
	 SIry+iinzPVaLc09evyFpCQsK5Rvf78jvPhhIrHdcqyXL58AKWfvPFpciKxvIB2FH9
	 xlOPskOXVVy6+T6S/g9yk7bpIXv5pBmZkRtMXDIKEipsVzjrOmQM2orHZ9AOEEmfdu
	 KFFZIwVvQTJQGiCbIF8Yp0J9fJ05jiNWyI95f76QSi9obIWn5hKyxpuKID3HCznJKh
	 vkehY/VYoySzggw9DDK1FEQIK9+u5DatI1lL6ZIQBJa+gfOZT8ImEpBCGMXQb0qJQr
	 tggFxXa86OuJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60766C5AD4C
	for <ddprobe@lists.linux.dev>; Thu, 23 Nov 2023 04:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170071309637.24032.16760830909781278597.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fc435a22ffc6ac8be1f08ec73beebef2006fed72a6d4d871ec1e351f89fc6b3f
Date: Thu, 23 Nov 2023 04:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1700713096
