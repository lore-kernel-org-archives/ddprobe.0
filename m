Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DAFEA2F33
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 12:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8C08AC433D2
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 12:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672661487;
	bh=+1DwKPxdISayPaIV+sCEOpgpwsPwS9DS5Q6UBxRsI9w=;
	h=To:Subject:From:Date:From;
	b=OGN7SZiDj9vfBsEppF1X2fUvoMHW20RuzEEKFuzn/hbT/0z4NfJryucglEqjEvf3D
	 o3nWqqi3h1BUS/mhxbxvUUauQqLeK/xsROhkPMFul6RSVnhbWoQJW0ii8Nq7nMgSqE
	 9Y1WDGpYqSWRaqt+1GgwmXLXNyyld3/eAK7L8Lv+SH3ZaF+hrMEQeCJTAfVbjRHBjU
	 uvoRzn5aiuXhh2gTrSrTGhWC0Sk0iYseWTVT5LuH0X3yB8TpYC0b2OD63uAvJVfeIR
	 fOVSkmril7mvnKt/9hr3wUezd318InFwIB4WyEfP3VqRfVSAYL9WIff3VtxpvCy6+r
	 60CMd5F1A+NQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6BCB6C3DA7A
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 12:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167266148743.17331.8545273366877318913.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: df47f3be79a66e42bb91acbbf2350af0f5cb992b9f098441de9cb7cb09fe0821
Date: Mon, 02 Jan 2023 12:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672661487
