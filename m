Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 333AE38B130
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 07:10:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778656234; cv=none; b=brnuRlCmxAlRxu4CGZcyes7g9kUWxB4ZABbsMZKkWCz11Kw+0qkuQGekPBYcYKN+DRiv00QU8tilLEPLZ6VSLq8szUKVV7C+SYRdOvTI0eAyyq8eWKvOcWLdhVmXhlazAbZPpEm1kvGGyq0PYX5BKGrgtBLPNSbJ/0JhC+eaxUc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778656234; c=relaxed/simple;
	bh=zXHDxHFzPpO45eNlJ5ne8r/wbm6u1UlgE0fS7w1Vxxo=;
	h=To:Subject:From:Message-Id:Date; b=TXiZLsj1WmNzauwS60WQLLmyy17RRddQx9grC/LaT8w8ABsg0Vh4seNuu3hjGZrlPKAqrVjQCcjz4WmK1uqLZ3fO+yvcVRc2DKN+rHHeJNPYdG4gMenEMcmi0QEhD517tLLTIk0bVtVCya8s2lAL5OTzg3a0xmjYXLzBj+19jSk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sF4QbUwG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sF4QbUwG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2C45C2BCB7
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 07:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778656233;
	bh=zXHDxHFzPpO45eNlJ5ne8r/wbm6u1UlgE0fS7w1Vxxo=;
	h=To:Subject:From:Date:From;
	b=sF4QbUwGDmFyWYom36IotYO19xLBQv/W3SmbM/OOileJkMIKZV3qCGmoIgR5D7HMc
	 c2jzCIPkryCTk2FZWiY7ioBoQSeFZ33T3LFvv9aXWn+iCe/dw9PlDH8tpIGE/U4EOc
	 ULR/kABBtHDrBrKJ65bWKvdJEXhG0yxwg9sKZT3NXLwKmywxtPGb4IyXC/+qO3Fbb2
	 izYeXHFPBlOBFG5YgtaT1tb24kVgeN9Qo5eoAr7IpA0P8456iSwm1nsCi1cUwaH4GV
	 ODZOrYsrHB7z8ujiU4yWriwsdD9H3hR64X1QOm475XMzccO56iDCFwd8EKtq+7EsUm
	 6AV2YIVM9I8LQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD06CCD37B6
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 07:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177865623376.5327.2858021000423072866.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6912645b21929662566e35434f7750e8fcb9f0fc048777648fea5f90fccd9b77
Date: Wed, 13 May 2026 07:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778656233
