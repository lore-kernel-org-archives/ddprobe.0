Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CDE320FF
	for <ddprobe@lists.linux.dev>; Sun,  2 Apr 2023 06:55:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2F32C433EF
	for <ddprobe@lists.linux.dev>; Sun,  2 Apr 2023 06:55:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680418505;
	bh=V6WAwRXrobttOCxbiMSc99+kuy6FmqSUnoE+iHIWGe8=;
	h=To:Subject:From:Date:From;
	b=rks+PKvlxJ0Y5j3mKPkWlsFLXqFYMIoPSJra4YMeiGHMlPe52mC5zRmHosHheasKX
	 e6OgQbiXaOq3q7vJfOOCHRNul20lOm0SC+qkLP7O6FpTuB3SdXtBrvRHes4zZ0AVth
	 Dd5hjcBmFlQIkvN8ixVFi911N+zujHD1RPXMHdkUnhY4ECeesxynUNhDboD+S0vCp6
	 LABxxG/r9JPUeiuNd+3B0iCFPtwDvSp8cVOLwwpSsDP14bedhVrdM6u22nzAdIwhEh
	 mhkqylkYNwc+v8ufm0RfDIgMmUUHsswzlILHEt2jEVojEoLHyuLQYo0IjY9v9Djg0h
	 7zNzKyZ8/tpew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B677EC7619A
	for <ddprobe@lists.linux.dev>; Sun,  2 Apr 2023 06:55:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168041850573.25621.7454664479541308880.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 81dcd375512d802a21b60ddc1719953f9cfb9d46cdf35eeadbd9a76795754ec2
Date: Sun, 02 Apr 2023 06:55:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680418505
