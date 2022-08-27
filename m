Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E2079442A
	for <ddprobe@lists.linux.dev>; Sat, 27 Aug 2022 20:10:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8AA24C433C1
	for <ddprobe@lists.linux.dev>; Sat, 27 Aug 2022 20:10:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661631052;
	bh=nUoTFg1//uxNpNxHSGfzBvYTRavN2Hyyo8IlkbrIcKo=;
	h=To:Subject:From:Date:From;
	b=BsSSTaMEzTeRlQLC9FkCPy3JD3ktrAYdrTcDrV6SXp0mGd8jxUoWV/ek0ljJubulE
	 cWSiCMK6lYWEQqt9sDJx2U2taG4lQ7JdKvAmc9w8XF/k6exsx+ok/WnlsdojOiFtG4
	 RLELnsv5pMxRraDA7Ttvlfkxzh/lanVGItcHxLASOupLbcgmGOzeDIWr7colecMllB
	 UDjyzS8NfqOPhTGwLqQ37HE9dTRVsI3fArx45gVZIdgqoLQK/iRMsPE7Bn4JOC9Qjr
	 eMq0+o7CKGaLClZCJDwdp7Yb2Ue5lSn/YltXimHcGHJBD4CjFZ2cKanGx9xOWSau5R
	 PfObD1k3YNX9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6C030ECAAD1
	for <ddprobe@lists.linux.dev>; Sat, 27 Aug 2022 20:10:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166163105241.19319.17533112831787488946.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f8c6d64a1a2a3707aa643b691266e8f32e0dd19b34d4b56e1933c3e0023068b7
Date: Sat, 27 Aug 2022 20:10:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661631052
