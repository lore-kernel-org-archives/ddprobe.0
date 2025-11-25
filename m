Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2558C25F797
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 19:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764100374; cv=none; b=imiRY6h2pN5RKbl8E8i4f2HUkzJwgWpJFOOdpR0wvTl+dHJIw0lUDFD7VGgmba4n9f/7HQ5l4XE6XtD3qvQjO1j2J/U7aQSXFr5WePqQN1uXXaQRM4T5+3acPEYtZUgkaNomkQHsiR1ONc1A1n0UmOds1yxQP7WX5dC+Jipp/mY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764100374; c=relaxed/simple;
	bh=BIyq8qiWEWk2b3j49ga+LMXGcvrJt6gbcVvkD5IKOVA=;
	h=To:Subject:From:Message-Id:Date; b=cDJBKR+CuvWAfwAtkLH40eBH/z/WDI9YBxKFha34ypoNzlAQYAqAgjECh7AjBK6d+Qa6rl6yvANBOtojXZuGRf22ISKsyMjXuRYRmDMQ3I2lAd9uAPi5X+WNbbwL1Hiq3/n3X8avNgOSyrOrkgFN+cLoDumNWR3mNVi9rGD8eTs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CYrjGnQx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CYrjGnQx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB452C4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 19:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764100373;
	bh=BIyq8qiWEWk2b3j49ga+LMXGcvrJt6gbcVvkD5IKOVA=;
	h=To:Subject:From:Date:From;
	b=CYrjGnQxnMUb6lFIYmDfkCwS2slEtznzLETqYEtpyoJZ7Y/fZgnrACk8WJ43lajCH
	 ZddAAqR0qV0uqUJtomMIERQEE5c3I1b7GHBc2N09fVw1yYXP0oO2TuOfXwpaH8EXIW
	 rVW9qGX5YiTO0iEywkJGPn2ampU0ECgUaAsZgUIz56udTKOXRye/UHOoQgl4F2kqPe
	 CeKB0PEqjNOXVBVPrNqU2frc42w4CetrLOihVM7zV6KXF2aVlzHOYR8v7nPgRUqHnv
	 kVhbLfoZs5s6FCGgd4DO6tungkIICB388A2yiRAG6RQog54s5QJ4+ofp0W4+Y0J5KI
	 R2pjRMN024jpQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 989FCD0EE13
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 19:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176410037358.27450.2626570672079963642.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be12ef6cf0e656786cd30679213fbfc9234b83fc2229835efd6882c1fd79ddb6
Date: Tue, 25 Nov 2025 19:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764100373
