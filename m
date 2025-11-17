Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37AB827462
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 03:31:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763350314; cv=none; b=OHhIsRkBtvsjErPKUuNXo3978ET6Jh6jDLmZsd+NSHNtaJY2jRaihTS3cbqpY9v5wf5A8a0DgXu/LSXx7kSO9uxfaF69bWKOk8sLPx20qYn5/wHfXereJj8kjTMYnWjh8RGGr44uMlNuKTb7ilc/wJyv2EUq+zYwwOPjfV7/jqk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763350314; c=relaxed/simple;
	bh=4aVciRzp1P5jr6VZgI5xAO6Zi00nD8DaQ4r9E+UsmB4=;
	h=To:Subject:From:Message-Id:Date; b=Rn3AX+rz7M0N8jlLBp+tBbcW4j1V1962YZhi6bqM3WWsc8PjdTbERaOpNzkmruMGw2L1X5YrQAOp9p4kufaSXecBhyZdNL1fAQHoSWj6xDwJ+B/AFhJFIsEvB73+c73Xo8lL+K5GQ1UWpK4Aub0SR67x4o3QYEcIpI4fHrn8OD8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SpB4nOVi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SpB4nOVi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE3A3C116D0
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 03:31:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763350313;
	bh=4aVciRzp1P5jr6VZgI5xAO6Zi00nD8DaQ4r9E+UsmB4=;
	h=To:Subject:From:Date:From;
	b=SpB4nOVi7idoWWaI1trtnC0Jvcv31c+HV6Awhdjawf9EPNj/bONhWppabsmTdC7EG
	 Wzy7T5v1BpxILf+stxSWAZakn2MP1p39vDipway4mDVNn/Lk8HQt34HqAKSsAPIeJb
	 sjKlKkE6blY+HqZhFj3Z/UOhWAXjcM8uo6UeVvWwh4StepLcxVdq0VTRR42s03ebA1
	 0yvT2bj5/84lMiru5qk1BqGHlhuP0eI+D0Iogq3Ya18PqR1R0fRPxx3gOEKtWwKG2C
	 jU9NYs0iiop3wDJOOR9r1K4NQ93DAgvCk1UBwW9/oBB3GSG3gHSgf4b3VIJdDfIuRG
	 vWblQxvkxV+EA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E672CE8D6B
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 03:31:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176335031363.1723.14768253213118453372.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 17049ab78857ea70460395c8588ddf4b588a5808c4a36346b6d9a4c5cd415305
Date: Mon, 17 Nov 2025 03:31:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763350313
