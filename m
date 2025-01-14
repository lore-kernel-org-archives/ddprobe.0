Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B1F91C2324
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 16:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736870754; cv=none; b=CosC1P5LnaTgSUQ3etu9LyPf6rB/1/t748wL2NNu95hCfnVmrboPbGCNwGXfj7/DfrnGfumajwq49vizKBUH9QHk/4EmSJVtqiUuAzbfVejgr+0WnYhHHP2/kR6/jTQjZFEKAmHmqKVaRk+mvI6WTvrEVyrwJ1B5cH+cb/6LyGY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736870754; c=relaxed/simple;
	bh=3C+6cCskyVvNCp/2wPmykg2Js8ry3K9VwNHwRYebD9M=;
	h=To:Subject:From:Message-Id:Date; b=AfHIt2wyQVPjKUuqtQ3E6cJsEWy3xdWuckAGrxyliDhgqdpMP2RdeRGduNRfpiTO2FNUbp4G0eszTa9fpVWXEdt5IDvhNQbjrbtEgblBc4Qfs6vYGNpt4RlA2mycZ+/u8Av+wKo6vDAlkaUphmkwBKHwjOD0G9Vk+2OgF3in/Wc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TYC69c+J; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TYC69c+J"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E2D6C4CEDD
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 16:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736870753;
	bh=3C+6cCskyVvNCp/2wPmykg2Js8ry3K9VwNHwRYebD9M=;
	h=To:Subject:From:Date:From;
	b=TYC69c+J4gQuKQK8RXzFWUvC1FNz83z0KiqOWa2NIPbAdQwgVIcRJJfLYnOrehUJF
	 47A8TK1aYwVmwAhc1g+X0yWl5N61+0QeyvAs9WUZHXZ9/qakbHHCNI5GW1OEWMRXi4
	 mtHAh0VI3yQ8agopEQ/6RQF+5PVRvkGEyqJNax6h+SP+SFZVOtrCswQUr0cu+W3xy1
	 9YNssVfCavb507hlu2sPmzbuNxyYBPgw2bcbls5jj8Rvcw6adcT6iF2L42+GMy3Cdh
	 UyGKhyz5YJg0di/8964mAkiNFsVp/9by9AQFqAyknJJnEDrpthZ6MIM/+Q9hnK2Z3k
	 QZu5WTrvLF86A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E656E77188
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 16:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173687075357.6454.454157250256961835.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a5f9d0b647232fcbbb4159299fa198cafd2678ffb24f1928b5019aed11c7142
Date: Tue, 14 Jan 2025 16:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736870753
