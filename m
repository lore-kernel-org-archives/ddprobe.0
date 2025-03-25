Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0481618A6A8
	for <ddprobe@lists.linux.dev>; Tue, 25 Mar 2025 21:39:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742938794; cv=none; b=WnHeL1/Kk7DksMSs7wkL16O8HTw5+amMdWrbIXhVhrD5dGKz2sWlf1Um8sX7qKu2wYKoYnAw1qjVWjH3pZq0twbhP0XJi7mybtoKeqUigo3XBMmztOIp1uni5k45UKCXX46dTmpL1Ywt+GEOfg2TUUMK+eBua+QIYD12qxRl3f8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742938794; c=relaxed/simple;
	bh=TMrma9jIkhRUoHOV0V5Eplx8JD49USeRgFTvCVz606M=;
	h=To:Subject:From:Message-Id:Date; b=SvqDAhR7loip+Smf/23VMrlLISUsY17nzPszoHfuVIK2xJzZXL7a+/ION3V0WdrWln/+Jw7P6BKkZRWczm2Ilp0SAHDs6kN6x3UCE7CyEMmDFF04TGqf9QMOCYc8S7K4JFborYuCuCZDwX6VrBJJUtqYMJ81YJ88y9TouUV6tL8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W8bUzFZv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W8bUzFZv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1320C4CEE4
	for <ddprobe@lists.linux.dev>; Tue, 25 Mar 2025 21:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742938793;
	bh=TMrma9jIkhRUoHOV0V5Eplx8JD49USeRgFTvCVz606M=;
	h=To:Subject:From:Date:From;
	b=W8bUzFZvEDyEJFA+VWGC4JyHWOEqrjrSDGgTC47xbIIVG7syVlVt9QdRod54l5q/T
	 UmurJN4bKRJSBYh2JjX5si1D9LTL6NeI7TXhbiUraiBBtNLQiqWWH71QLa0jKHrgHR
	 IYwjYja0asqYAk2ZprbOP9dd4o92ocOJ8+Ew7YorLnkJy/Di1HRFRhJiynEkOycRn2
	 TnP5uP3vhHbVRc7bMnEHYfShDMU2j2FCn5IqGlf009v67hzezALiN8qDam3vIsk+of
	 1pWCgAT86Rqf36f40ZXU4w3QH6rwOjGjc4vC4F/9zJ8Trzb/C4hlrJIPd/D04JfyZO
	 Ddg2N4wZz6A/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B45B3C36005
	for <ddprobe@lists.linux.dev>; Tue, 25 Mar 2025 21:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174293879372.8537.3458250310074673333.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2db6dc5e8f22933904470cae9ae21e38b47072a0b36a19ca6195bf5273607b29
Date: Tue, 25 Mar 2025 21:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742938793
