Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47F8123A0
	for <ddprobe@lists.linux.dev>; Sun,  2 Apr 2023 08:15:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E789FC433EF
	for <ddprobe@lists.linux.dev>; Sun,  2 Apr 2023 08:15:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680423305;
	bh=cQHxxhaPqMECRLWGb2nCfEw5ybCa9EzXkPjPOwWWDak=;
	h=To:Subject:From:Date:From;
	b=OMVxrqRZN+3Xx87REvMJay1LzC0YqlcOIB0Xxt74ofcIDWzuyiD2yuGRWXJGgYUt/
	 Rvv898K7fXOVBU1K0oT6Wlb37EFc/gmTEXp3ZxlXyi6cFGeEkCazB5dHsvyRIUmOr7
	 Qg4WUifHdEAyHnQ0VlZ6NYx4SimtFgPY7EBJl5BN6D4psQstmUOUXw8198/INFrVrY
	 1VmGHlnFzBMHgZQor98dbyX9SqSQeXaf2HVxxYOslSwcmKRJl8Ovzf+DAUEgFKYqlo
	 iiNekNcG+QhYibxnUmcjpBYBJf6Mgwbv7pbPXbYUGYFXm5aprsbTqukdz0SDRiEpIW
	 Sy2lXK/mDQ5yw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CEA77C7619A
	for <ddprobe@lists.linux.dev>; Sun,  2 Apr 2023 08:15:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168042330583.3912.15763920912469122419.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8bcf08b8875c9851a1582b686762e1255412017b414c552feae9cfce39f0ed8e
Date: Sun, 02 Apr 2023 08:15:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680423305
