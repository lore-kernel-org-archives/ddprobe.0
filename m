Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06F1C3164DC
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 01:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769736834; cv=none; b=XoAK6cIrNk2mYrWk4iJl1RNxtMXt0bVfN/odF9cowvp/aUxXg8SRou4TtCxr2YCRQmV7My3BfULefbY9dVfNJfY1aEwFAgq8nPnEtcfKZn0D75VFwxSnYaA5z0CDIateJE0wL+0wRR4v9cJqQGhLBhP7VTMvpYhsqcIxoyKeiOY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769736834; c=relaxed/simple;
	bh=Nz/sqVn0AYa/X1Air9CVRhzA5Z6IWc0xWUxxu5KMUCY=;
	h=To:Subject:From:Message-Id:Date; b=uzDTOV4TnO7045sGK0dGDt9FVOQzEkj6RYJF4Ss6pfetIQ4q2SUM/HVL2RMg0cIjo/PpulFjlIjvlgBM0zqgU+XqoWHCONhLgrymD96Lj9ukf3hD9oIzfA/FeTX3EKDShrhGUi21m9yQk5vOwWwrm0cBvSPEUM3xIQTOX2sDY5U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cOs/EYCb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cOs/EYCb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D942C4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 01:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769736833;
	bh=Nz/sqVn0AYa/X1Air9CVRhzA5Z6IWc0xWUxxu5KMUCY=;
	h=To:Subject:From:Date:From;
	b=cOs/EYCbWQcXT4Ow/EWgArsEbr2ISFYLYDDPUTyBqC55ngIJTzuhmwvwEoQGpqtHM
	 w5YtajaJ/DmdCVOKF0aDntEBejrHk8EsBShr+17KmR9gccWi6yjiQzO1shz8Hi8dQx
	 17cSuNvQgEgVR3CxBj4dy/5DC2UaOMwhdtraaQSJ9Lvgu6YkLV+fATevCcUKXq10OA
	 7dbC5Oipa5YgfAPGlv4vj9Xz9mOxR0bnn1wxsVhBickcmqhPor/ynlOZS/6zuJzwka
	 zSI0Tk0zafZ02u9QSa7+iJmGZlwvZ33E9Ah5aXh4xw6ZexEmparZGhANjyQVjCaIm+
	 g8U3kr4PrwJcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FA04D73E86
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 01:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176973683358.2962.15627711066152682738.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b4be5fe589147e410939253ee9d7da952d073b3f0e38f0bc31ea626444204424
Date: Fri, 30 Jan 2026 01:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769736833
