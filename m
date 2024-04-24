Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5765415442D
	for <ddprobe@lists.linux.dev>; Wed, 24 Apr 2024 07:00:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713942023; cv=none; b=vBdAeT0OicTAeWDVczyl/+DM8BnWAO00Zj2INHuYcLJcSNCSAcsOMWLoRqRieS1/ETgp9mzl4h0z5OQzdgB8PqcpAsZMIPuugqMYwIHLTl6cOfO5ZaX57Lt+tqMTK27KTP03DeGnt9UBNMZvnKd5S6OMFMgqC8IbVS/67lWLBhY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713942023; c=relaxed/simple;
	bh=CupRU1ChEVAiCZC1mCLLCCfXlXwZje7DhYJq0goIcrY=;
	h=To:Subject:From:Message-Id:Date; b=D9Xm0T+tKphmrceEIS5F0IBAOqK9tKTIkf9UK9DP69bcn04bLnrQfGdqtFaIjlbS0gWHHxVOmv1z7nhgs/kon6A6hOpffa6oBtun4yZlNYR/yUTL/P3hWyKtL4FFat851F1qupcQzzfMNuuCSdMfbQc2HucQSEKWFm6jx9OfAWQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pG+3D1lW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pG+3D1lW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9F1FC113CE
	for <ddprobe@lists.linux.dev>; Wed, 24 Apr 2024 07:00:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713942022;
	bh=CupRU1ChEVAiCZC1mCLLCCfXlXwZje7DhYJq0goIcrY=;
	h=To:Subject:From:Date:From;
	b=pG+3D1lWHvb5kTuTloFUmDNC7zOtLG/ndRaWtop3ckRRWWjD0eBYq5ksgBUr2s+vO
	 dZqTmsykn5xDXjQtV8fZvB6R2FALQJHRKVNXxUVR+rf79AoFWw8ETlXGkLcpXwmDzq
	 jp4qLhHcddNMHaTxYT/cmhQhhkgMoUNuDU9MhLtU9AQWv4G4JS4hRhf8BA3hNBdZJg
	 OvY94xXDBbfrhrXaUMoB8TxaMPmaGzt8YA/KbYT4ZhO7+1jVugjRbJJEAaCkNHKmZF
	 Li//FqnfTcDmssuL7iJGyh0RNfhbhgPEF9RslctY+zUeJEKYjZ2Ywcug2jAL40ssv6
	 GC9qkDmz6e7Ug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C12F7C4345F
	for <ddprobe@lists.linux.dev>; Wed, 24 Apr 2024 07:00:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171394202278.21003.8238716015896268119.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec03e79a656ace073511aa20a59133d1d045fb014e84ffcadbc9bcaadf55a416
Date: Wed, 24 Apr 2024 07:00:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713942022
