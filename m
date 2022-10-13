Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C65923C36
	for <ddprobe@lists.linux.dev>; Thu, 13 Oct 2022 17:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 74085C433C1
	for <ddprobe@lists.linux.dev>; Thu, 13 Oct 2022 17:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665680453;
	bh=gQSXDZuJ7HOZmkomkNibueQ/o4k2FGkSLbUXQUkwdt8=;
	h=To:Subject:From:Date:From;
	b=uw+WZrIhKL0mS5swJUYL01x78hIIuh3R6UVLq0wM5eHNJExsrvLaFxE3fuWyR+xJ+
	 8E3aru9HjN13V+fdBpnr+1ZTUET71ZNXaIUe1jF6/OiICaGzZDxUfvxM+ZgvP5FD79
	 MwP6iDzfsbnQfZ6sv3Hr5/L5cm5omHVMaCI+oWjbtCHna3X2D+AkMjsn4MK2+BFTDa
	 fQcLUiTqLx1y2O2G/CdXrHMZzYUiCT+mPaMUyAEKDdaTp8wg4vK1uOyukQBFU/Z/0a
	 TYjRPz1CRHVamzYhm5zp3PL82/2y+MFqh1VVT8H5yIwlzYMvgsciNrmueliFa/o4W1
	 QjdktIo5/hIHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E9CAC433FE
	for <ddprobe@lists.linux.dev>; Thu, 13 Oct 2022 17:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166568045337.21482.16180256090188334296.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 89f27cfdb638b1f63d1f7fe7c2b745e54ddf2b0ca1cb6364bc35409380d82013
Date: Thu, 13 Oct 2022 17:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665680453
