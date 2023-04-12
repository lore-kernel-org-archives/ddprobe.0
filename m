Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 375D7364
	for <ddprobe@lists.linux.dev>; Wed, 12 Apr 2023 06:42:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC3F0C433D2
	for <ddprobe@lists.linux.dev>; Wed, 12 Apr 2023 06:42:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681281725;
	bh=nFNHgMbuD2HS9dKIzCq5GsSuLJ2Y+L2QgZy3LYw5kbg=;
	h=To:Subject:From:Date:From;
	b=IXpEgNS6PhhfzrULh8ealrBeimu9FzZYtLvIWAt/wp5YWpNGeVDE5YpBSVRrReVoT
	 /YgGx9QIo+b29Hj8bhw0iM0+sFq+SQy9muQvE38C4uRMSPTbGcQMGbWaWTR3nbuHOE
	 E86lY80by2RC4Y09Muc/XZRKF0c6mHSY+qVsDs83SeTlEfeuHximjsOajq+C0O2uG9
	 0NYrBBl3gjQMYhoFTfFbWs59nnByLBdxWysfeh3/PwXI4K0Tt9Fu1ROtB2XbzUgfw0
	 ftbipPxPxRVO/Ed560QYkVDK9azVCnCvM2INtletz9j4ucOCswVfEKfHmf7VTAFlxr
	 3/cFaQZDb4rXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0D99C7619A
	for <ddprobe@lists.linux.dev>; Wed, 12 Apr 2023 06:42:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168128172577.8268.4213308961175287830.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 12ae467bede87d1ce702d1189035ea8db4eccc92b07b0982a3821f875d3f3fa1
Date: Wed, 12 Apr 2023 06:42:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681281725
