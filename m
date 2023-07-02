Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 579731FD3
	for <ddprobe@lists.linux.dev>; Sun,  2 Jul 2023 13:04:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC8F8C433C8
	for <ddprobe@lists.linux.dev>; Sun,  2 Jul 2023 13:04:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688303048;
	bh=+yuOYhMAB7X+i0lIBvDZLq9VpjPMU01JNPtrZGb42TU=;
	h=To:Subject:From:Date:From;
	b=tb5z+e6zJ2ZqY6AN/gucCbUha6NZiEZ5ksux7LgTZo//AEBvQamt3mi7Q+tt923Vn
	 rqOBkne8cLOG/KpFmZHkcmqTtT/UyeANYT9bww71+iiGSV6YSjAwfz7FupgGM8OeAc
	 PDWU7hJmiOisJ6t1kamiFED7ZBt7/JI02/CLSV/qEYtxeqGqF8o97R2ILkEnfuHZ7I
	 KgxEAz1a1LnpSl+5nTKsh8VnwfsIvrIGc9DA3WGlcyThEVCVWKKIr8YKEpyRcVvjUA
	 I588C7sro+/R3lTOF9bdhTS/enxwKR2A0T8C3HRgBJ8BhpvTasVj0wdMh+rvGc0Pqg
	 S/vtbXRO0YNcA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE1BDEB64D9
	for <ddprobe@lists.linux.dev>; Sun,  2 Jul 2023 13:04:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168830304870.4538.6931548032076320052.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 244dee55084c95ba84d3bd79b264ba3200d3a7817930ddd7fb4bc3d1fbb35c71
Date: Sun, 02 Jul 2023 13:04:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688303048
