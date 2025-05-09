Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C8467F7FC
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 20:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746823794; cv=none; b=hKaT9O2OqQylXw2t3RIp50SM6gsmZMr6xu8PESdgYqjzT5q9JZu/fMkCaGhO9+DdjpCsc0bOfuSFLcqDWssDnZnP9jyD+DFL+byw2F6mix57eLRYOWWabSKa8viMcSinRUuRa+biPMTrTi0AxCBrbGK50OIU9DbYLnkJXVmOtLE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746823794; c=relaxed/simple;
	bh=5qr1K99CawE2YpYDSpncS36zhGt6As4gfWRU+PJbhIA=;
	h=To:Subject:From:Message-Id:Date; b=EdZhpbrYfRJFMyRJ5bK03YQ8Mb7zEK0lz7D0MYLio+XULSh7fNhsKjX7L9aoKg+nJ9ZcTIfFBWhUKHn4LCJ/24o352hqrgTIgvknsKfgCBIg8Tc0rKoyOOFNiCUcD2CdsdYpZAtVcw3XKl3wPs+qH7Bf5aeVcAK3OvYXDkqsv9Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EsdUvZu6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EsdUvZu6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A27BCC4CEE4
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 20:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746823793;
	bh=5qr1K99CawE2YpYDSpncS36zhGt6As4gfWRU+PJbhIA=;
	h=To:Subject:From:Date:From;
	b=EsdUvZu6jWuEV1HNnCGcf47Ay77Zb/itBH1SC6ytCe4L2DUAm+vU19KtBk07dc+wl
	 n6EFAHO/CgKKT77xJX5hygnUlHRFbBEVu8135TjapM+6Z74GwY5uQ7PlQtf8yU5FJt
	 Nc8TL4EEnC1s1o+B6GcZ26WL0jGiYD51BLhLZNy8u27SF8jVng3+nogwkrQiYVmtiH
	 EiF6oUkrsVe4hTN8WqBj+8oFqS6oKBtoBOmD/hBfKj8OcexG5b0cllxD0K2qpLNQSW
	 zU2WkRS/BoVakE5yU5wXgbNZf6JDJ3B8MLR7VOB7rds7kjA+1jADK/mqQkHc73M77d
	 uryToD+/MhB4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90FA6C3ABC9
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 20:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174682379357.29556.4831852371545377393.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 86a08e513dbc9a40a9cbf2d820ee6cd65883571a23cd6deaa585c39db4d2e376
Date: Fri, 09 May 2025 20:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746823793
