Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB24C3D65
	for <ddprobe@lists.linux.dev>; Mon, 29 Aug 2022 14:10:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 72195C433D7
	for <ddprobe@lists.linux.dev>; Mon, 29 Aug 2022 14:10:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661782252;
	bh=3NvdHViQ+l1GdZeZQ5uhXhocJ5UgAWqD/e6jcMb31c8=;
	h=To:Subject:From:Date:From;
	b=QN2ly+van3K2T+ksrbNOm89eEaMqwZV1E9ldDNak5wV260SuwptvDpSBlgkDlDADS
	 DZNme+6Y+J6AUKxfUhmpoqH5DDl1i7PkBV+uzAz5mM9VzfaReiCJULVAH58bdo07IA
	 fFgPT0BNbCJEyIh1NJssVOCnjsn/iRLt+4KwmaDq++F/i7IPUeXyZ7NZwdj8tDwNnr
	 vrxkP50kbkxi56FuFyK7QiEt55Hv84o6R+6foJq7pO2U9pvo5H7LDYmNy+rrOeTlJS
	 SbLOl2SQqo0jkEAbUgj/Ct/gJqrvZU3/rzsOWsqVGRrKXj0NcmZOsDWbTxBR5mC85K
	 S8c/wPaa+PVIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 552D1ECAAD2
	for <ddprobe@lists.linux.dev>; Mon, 29 Aug 2022 14:10:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166178225234.445.18333541050888481335.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7724068839729bb740e76087f4b65f9bd15228e34bb22539e3ca1121389e1d11
Date: Mon, 29 Aug 2022 14:10:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661782252
