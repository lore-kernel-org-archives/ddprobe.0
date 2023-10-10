Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6104023A5
	for <ddprobe@lists.linux.dev>; Tue, 10 Oct 2023 05:57:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UWRXyn3S"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEBE4C433C8
	for <ddprobe@lists.linux.dev>; Tue, 10 Oct 2023 05:57:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696917428;
	bh=gAmf+ZH40ips/54HQTvc1L/qkOBb1034NEbFKALl+Oo=;
	h=To:Subject:From:Date:From;
	b=UWRXyn3S5Bb2AioB19X29ivTcq2NhMtaascnfUiXE8SZ/rCdro8E7kDPFKcbbPA5V
	 kmSi/palKvq0S2dBqV8k/DGyVn7Wkp1ftB6kp7wyC0gZoJvtQ7PIOZF24nt7MvwI24
	 p/OjxEiZrv5ngCrsUE14Shk9GgGCo+AFNx+qGI+uC7NKkXT/Q6LYTfhKeWKEsfDEvT
	 S/Fx8b6pXdZ6OBnlvoztuxhBGPfEIA+1NRnL9GWbuUnWIOojHOEEYkMdsZtsmVkcxe
	 ORVR8RrkrTbN7Im+Dt5FLk72UtfxXqsW5X6/3o2QgGHLxOtIHqds5RH9yJycFiX0SJ
	 0ITQjEqVcO5+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFFB8CD68ED
	for <ddprobe@lists.linux.dev>; Tue, 10 Oct 2023 05:57:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169691742871.556.7638137960103750909.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c7089dcb7d42d2be9443c142a9d4ebbd96bf757ce89d994f97a376ed9a60d0d9
Date: Tue, 10 Oct 2023 05:57:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696917428
