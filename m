Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52F3438DD3
	for <ddprobe@lists.linux.dev>; Thu, 30 Jan 2025 18:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738261555; cv=none; b=BrMGE6T7zM1u++FgJfp7XsObQhahYL/0oJmN53KPF5jVwoUkQYGbWc7fwGFwJny1cBlXoL0kBvflBRdty+gU8gw3v1kVs5TDHizrdLKrOZxB3Qp13IjzvPsYJLlC1otcbbYafjC+SDYBU0ec/glpxO6P977HNMRiASe/exLrPiA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738261555; c=relaxed/simple;
	bh=IpLmVC6+dwEIfdiIA8lh0e+DuL8emrIVBPHQPeOg6nM=;
	h=To:Subject:From:Message-Id:Date; b=LfY2tNBwEFi3xgjv3LmY5gKSKwfEDxLy+tRKS0kqsabO2wPaq4xZIkdnSvUAqW+0jvWXmVVPrxnMR64GCjKYTyhngNPBAjrLrjXLbvF3blPhm9f5RfDuvMTai8thfB4ul4kl4oH2Q7OmKQ0zSvnF5JOhwrRLvP1bKN9E+GpxSb8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CxLrc+Pd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CxLrc+Pd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC6AEC4CED2
	for <ddprobe@lists.linux.dev>; Thu, 30 Jan 2025 18:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738261553;
	bh=IpLmVC6+dwEIfdiIA8lh0e+DuL8emrIVBPHQPeOg6nM=;
	h=To:Subject:From:Date:From;
	b=CxLrc+PdqHzjWj6yYHqtjIx/cJ+kmDyh9pDTkUB5MSsnHnm9OmWvVyzlY1+A5njKv
	 nJoHjdtI03myetUkntxejXgqbj+fRI47jPl1aEuAqyzkNsBSC+zzLtxyqa5OAqvenJ
	 0JGKeFLSw5ASPEbY3NNY/oYYiW7f2WteN2NyfPBBdqj/uDl0jq3/8SS16txKu3l+Wo
	 uDqBT8sMTWMof+d8ecn4VDI5x3zDhSxFKdXRn0IlB0icN8nDtyGGCSUpLukXF1wdVg
	 I2ZQOm6R2sa08AMuWZGL7PwrF+EMLG6msY1CwcMPyQt98Zhmg9wAy/OwXDNCTInR13
	 01m5wBN2A7bJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93242C0218A
	for <ddprobe@lists.linux.dev>; Thu, 30 Jan 2025 18:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173826155359.23660.6442558134170640343.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d0d820fe343ddce3a2216be8257a3c3d2d7a8a65801542e306c82a03ad6a6e74
Date: Thu, 30 Jan 2025 18:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738261553
