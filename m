Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11C3D2D7810
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 22:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767910434; cv=none; b=EKv5lrFTlYowpvL1xmWFkW7CY96QCekVzs7mR1PhBK6UsbdjoHShkzVYqJFOeQtsEm+EyfSDRX4Ec1HzmTVmiYE9Df/XtfNkMaz5AKNVgOUN4YI+aWN5NycNF+HQGcij9daqFZ0vGDbYFlnsiIF/SUY27L20lTejDud1UECJaT0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767910434; c=relaxed/simple;
	bh=zfnyK/QijM8JS+n1k1HVCNi6JQycmZ8yRLRL5RMztTM=;
	h=To:Subject:From:Message-Id:Date; b=Q5QNHrnp9l0NxdZF2D55T/r9+poxiBa+7tt6mZtgL7DyBkt0S5JXCPcKJwEOJ5Cb+XC9cINcZf2f0iAvumQETggoEbqy/1i/pbIXJi9NmGWr0aGX+VqMXUvG+VWa0JM47Xe2LSRa6cCQAT0jzpF383aKS/Oqje+8sURTsS6y6uM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o7jGAEf+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o7jGAEf+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 953A9C116C6
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 22:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767910433;
	bh=zfnyK/QijM8JS+n1k1HVCNi6JQycmZ8yRLRL5RMztTM=;
	h=To:Subject:From:Date:From;
	b=o7jGAEf+RFHbfajyxX+TFdhLvTa7/4iuYrz1Q6hRuPk+9QtsLZ/LttQQPzDJFVNXt
	 rtOT6Hp11IwAh185+RuXlfdm12eoTgFajcAklDD+oBYud1gonAp5QdbnL/DU0TBoOl
	 VGEMxTJUJkbQ6/IqyMGNpvGsTQjsvLgF1CequkEDNEiEzRvwO6YxTtHaxFp0J9ql1y
	 f8pGaJkBOtbMj+KEXoH455InBH+FGe72zJvtPClzr/ArHmCqfwt3Y8DcHUuJNsfLFP
	 9M2BgoO7EvylUwKuyHBVpMeatLpT9Y34FbCPZr4tjr9VM2W6NiutSKvFBXjkQKkWME
	 j9qvL+VCSAaVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F19CD232C1
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 22:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176791043357.27982.9206829392397929076.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 65fc2d9a3f9d7f53fe46c62f9073868d64fb624f5469aaf1004b689359fbab69
Date: Thu, 08 Jan 2026 22:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767910433
