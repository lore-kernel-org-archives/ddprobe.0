Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3550228E1
	for <ddprobe@lists.linux.dev>; Thu,  9 Feb 2023 23:42:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DAD1FC433D2
	for <ddprobe@lists.linux.dev>; Thu,  9 Feb 2023 23:42:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675986125;
	bh=7Hhnbbhc9Q3alc/AeS3Aou3pyYco9bTkXLM6JP9yDg4=;
	h=To:Subject:From:Date:From;
	b=ueQBf19vyUk0V0NgoImHNRPkMIgf/tTvAnJqYcu69mGBF0B7ucWe9b11RpHCDj/G8
	 aSy4buxNmaDl8/R4ZJETRxUzAIP+KTIhkRICReD/TzbncJ1ZyrZ7RPhaIQplT4154x
	 o6i6Y2jZXZFWRw+Ix+hZqJX22VAQ310cdrPTawfVH19+o4l+9OMvtUaUaBuqeFg52z
	 SZkZ6rDZQo3hXie/qFR/qtmyMp3FLu9KSXRSzwbN3E2gbiGn5FSy4mx+Peaxe/FFqr
	 C6mbyQZDOgmZgXv94uPuFD3KmWPHGyu1449UwC/Wcpxuv/VAiZM9jYa8yUm7bqnIf0
	 0VZLnrZavEtnQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF784C05027
	for <ddprobe@lists.linux.dev>; Thu,  9 Feb 2023 23:42:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167598612577.381.14455295561052097403.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dbbc1bf218ea66280d8615edfe792ceb4f290808c1500bc3b316b10cf16fa6ef
Date: Thu, 09 Feb 2023 23:42:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1675986125
