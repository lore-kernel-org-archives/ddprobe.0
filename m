Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 755724C1502
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 12:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791547834; cv=none; b=tbqiEHXBrsPhUBe5A7k3KqHG3a1dg0ZqphuTm2ODaW2pYY+FU9nMviFBAQfIMfo2Bv4ENOz+TleWQ/dZUUw2vzMGjqIRE9eBfAi8qh2dHQNUg6nf7wNbP/4QosnNm4TKBjJMkv4UXwPHYyJzEmvmKt0LvE+mR/Aj7cA3t4nAz9c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791547834; c=relaxed/simple;
	bh=2u3I5J25SQFmkgU9sgw8aCEXz9ZaUXxT3RLVU5ah+wE=;
	h=To:Subject:From:Message-Id:Date; b=kCYS9LPTCiPz+4Ka+8YXaBMsENcD9E8JjTB0wWfK0SGNIKrzxe3dNU3Nc7w1siJx6wEF+3WIL7J80f0QW0cY/wPNic7zymTF+qkBb2rBu/u0YCri5/uk7xfLEyjqcZ95+zsO2LX+y9YR0TX7YGuko9ZEhIJpryq87N7ZVUYn1Jo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KlauGTx7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KlauGTx7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0364C2BCF4
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 12:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791547833;
	bh=2u3I5J25SQFmkgU9sgw8aCEXz9ZaUXxT3RLVU5ah+wE=;
	h=To:Subject:From:Date:From;
	b=KlauGTx7wAUtb3HHRKVvMGS6HViugCWASsPFQrHxlKc1skoGBH74EmZZXBEfRh5YN
	 T/CLkZmvjBvkVHm0U6toGQ40oNwVhbpUE5w3kp0TqMGeq+2LCwX37evGtfNxP2SfnA
	 1BrGqcoejsht0uo/KPAGbhtIJAYJNclB+nPikxNcI93iCeiri+usXFVKeBDtNSbXuY
	 ruGFTJylQ9DQn9rIfSiirRhhzzu1P+QknQe4xnRu4zsHWFyAzzx4lFdsw8NagVBrWE
	 diowe6Y5GiT8V84P9AUaiIegDvw96kYV1hgCIF/BH9/3+T4Ih0utAobyAyx5p/otfs
	 UiLYMqOZ709Yw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB55ECA601E
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 12:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179154783369.18264.9067986663044382694.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d6f4a0b6eb57aedab33f95d8bee6e2fbd097cd55faaba2f22c5da3874cb4bcb1
Date: Fri, 09 Oct 2026 12:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791547833
