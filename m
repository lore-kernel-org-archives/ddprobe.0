Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A1DE55767
	for <ddprobe@lists.linux.dev>; Tue, 21 Nov 2023 20:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VxRApbOV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8F81DC433C7
	for <ddprobe@lists.linux.dev>; Tue, 21 Nov 2023 20:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700599696;
	bh=RTWH3QKbWGxiKslVtkIC2YufPIQvqjMCI8JRzwXxmV0=;
	h=To:Subject:From:Date:From;
	b=VxRApbOVW8i2T105r2cqkegvS2kSyDM61PknjyBSFpqqAYVOfCF3rZdfyL4qI2ISM
	 LYxgjRpe4mpAoj6oRosKF9O+vnUjGeLDJK7vrKeGHqbKwRaK1VrbxRJfGCXYxOLZxO
	 ZN9MhEU1Ht84OnfmVqPgDB6952CSx0AFKJ++Ruvy2OdKkjyPHoszvoxiOEcsjy/Gtf
	 dmUD1QCqPUtpC4/Ov+1FVGQ2Lhf1+dkYyX5GmSz0sOBHu3RDroR5SQWDx7Wbr75GZ2
	 +Z3xXVoHLbVqHTAIlPZOv/pHHCb2WJD5bANIXyUOKLpOvUJrn5pYJ80jA+M4f/x7Xl
	 nTAAvf2YTRUOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 74DEFC61D90
	for <ddprobe@lists.linux.dev>; Tue, 21 Nov 2023 20:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170059969646.8491.106617329665927346.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be7e8421b6714962d48fe40415f439c4e6f1da72dbdf416c8626b97821b22b08
Date: Tue, 21 Nov 2023 20:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1700599696
