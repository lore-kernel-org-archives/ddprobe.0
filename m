Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8F603168BD
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 16:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786809634; cv=none; b=MYbX5M1fTtnRyNW02mq69C22YNJg8+bKb9g0n0qxpq5UGC/VI2eQrS4/DmmCjz0hK9Pv5+uQr5QMUpCouoE0imi0IHk4RqaSaG9hkggPwSDC+yi30RjKCqBgOkXgvnK/dXNbPdHluKYoldBQJRUOq+lFbEWbiBcB0fZkP/kCCH8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786809634; c=relaxed/simple;
	bh=0txtkJAgdJMNmvRW5UpXQvTT5C+D5H88XjXdoFS4brE=;
	h=To:Subject:From:Message-Id:Date; b=nNK+AuhjqVde6Kjh+T02gZF6G81WZ+AwxFzoiHuRREgUb3buL23eno6AHEobA0sJ2ZohMh27lOicKdqIFLCiuZ/RJbcznF7TpX6VWBGfXQL6SAI8VbTHtMbDDNdoYubU9xzCfQL0OqVCJz4UcOypr9zKPujMtLdGyEaBTlzmL0Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WpopTjl6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WpopTjl6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5011C2BCC7
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 16:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786809633;
	bh=0txtkJAgdJMNmvRW5UpXQvTT5C+D5H88XjXdoFS4brE=;
	h=To:Subject:From:Date:From;
	b=WpopTjl6dGWNFHOPlsHfbCGJIiLGQjw9C+VVBIdIpzIY1H55eG7foN/BNYdXrb/xb
	 PoyITR3Y6RnAqOtQz1/8AwWBH4TbYHWMWpBYkzc4J0iy0JeJ6kCFRCRiZzMsSvvuPo
	 ltrYRQ5Ir+/E6fWEbh4Rfa5+kXSFOI4IiiKdv++oBsxt1QetPdTP1iOrMB/mb0PhWc
	 O7ht+f+NpJ1uk/gmHVXrk8Iy9+8eTIKQE9y5sneNImhD8r28ByopjNV82YROnYdxXi
	 phmCZ1nDCjA/OMwm74CY2ieXAY1cctv+cRlVC++5WRj564gPapi+IWzjz8MvzbybNu
	 t8HszQiuM3Nrw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADF5BC5AD5A
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 16:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178680963368.2514.17176727669328758003.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: adf9496b454bf32911c357c96dda7a3edd4b8c979496f83ae41d6334dc701242
Date: Sat, 15 Aug 2026 16:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786809633
