Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C3FCD8BE0
	for <ddprobe@lists.linux.dev>; Thu, 17 Nov 2022 18:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 71E83C433D6
	for <ddprobe@lists.linux.dev>; Thu, 17 Nov 2022 18:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668708054;
	bh=YTEGYVefJhU9x7COfH8nzE6o5C74LBXWPsY+stboiE0=;
	h=To:Subject:From:Date:From;
	b=M0hj37N1cnxNUIAxcLSBlHxckeo2RraEuWvEMVt12p81GvecBdbn9z6/G6FBGvsVQ
	 4T0YP+12XtX09fx1xcW4cGw+8VJh3Q16oJbDFu+sKBpUOQXb7iHDNz8CFy+NqNPZKm
	 7aJUveUiQoTUh7bdeO+lXV4FogD1M7s8Mg2rx/V1hvNIStbU8eXCYkZ15dZPELuv4b
	 bvUqjjgx1ONH+2dX8WgtTZ/ELe0O10c06Tkk7J80mPD6vJJShGtWSGrq8FplOgMiyd
	 /DTks349aQ2vA1a6YKwuqSVxuuQtMkOdlKLZln+T9sLOyMO77/XGrrgH7MpLuvcaHZ
	 ZdSxe86DCKayw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 541E7C433FE
	for <ddprobe@lists.linux.dev>; Thu, 17 Nov 2022 18:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166870805433.28062.10736760482231869573.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3363c9821a9dc102896bf3b5e1ab147fafdf37b07c1c9e1f152bd5017cda787e
Date: Thu, 17 Nov 2022 18:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668708054
