Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5654314A4F0
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 12:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784980834; cv=none; b=I5OwJlI0dhgG/O32Py5ubexnUAG8jYx9dQ7aYUz5H203dug4KnSyc/kNGHRR1HVL4mfXx7X6mDGIcAyLIE9k+KTUtYvrCzx+hPHM27N0EQqqdjkUrZz+S1br2tR7fRw0E4TDi2DC3txz0EmhNy8yF1WPLeBMc9wLtuqE9s/kwwU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784980834; c=relaxed/simple;
	bh=Zv60nn/wcdALu8GBq8U7MU5ymgbbVLqRH6qx3xqugwg=;
	h=To:Subject:From:Message-Id:Date; b=nmgpe6TuABGRH4d1sbBM4zw7zn5BO5iOw0iXw0uncA9VjlqFnUq2/sN+XEI3fhUDgxmsY2tGJgoHJqTuhUucWSCD7cjkBlSC7gQz7Adc8/5i05Nd/LTx51LerjXmLABIhPSA+Dpt6Ut3ZAWNkYT4K6aHpZOduZOiN/sdJpjjyJA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b2735QXf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b2735QXf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D114AC2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 12:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784980833;
	bh=Zv60nn/wcdALu8GBq8U7MU5ymgbbVLqRH6qx3xqugwg=;
	h=To:Subject:From:Date:From;
	b=b2735QXfy+3kcLGY8VZf22J04+LX3fBKZ3CLTTNoJANS5ZTI1V1uPHRRRoASl8cfU
	 TzAIXiCHlr6ZVfMFEk27lB0id+zLCODG4QuCO/sgkdJs7LKKiyUG+8GU0bX/vINSU1
	 Mn4ZlWdRHXpBna1ODfCtCQIzqEzGTsStiqtGbw5eMDgD/Nl33RTPqHAazT/ntRlM9r
	 0pU6ahHBMiqvQOdqkFNMhsFz7wFmavp+6gZcMQvITKv/8GcSTsGnDq7eEj/KhM4vAs
	 hDjKRzjVo/hXMck8IHeAd9jgzIXZYr+qtpHWD5Kn7Ph4V9/JFzptOoCLa9yb5P7YCw
	 XEvudBNCfblgg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB409C531D0
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 12:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178498083368.28483.15371480025014811124.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7d175fe1dad393de6cdf4f4aecedc89b0d72188a34112af27fb0018d24347455
Date: Sat, 25 Jul 2026 12:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784980833
