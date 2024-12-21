Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 108D7847C
	for <ddprobe@lists.linux.dev>; Sat, 21 Dec 2024 01:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734745554; cv=none; b=KspaHzksqx5Lf7sjInBYmAEb5pUC2fQjzHi/++YCglPYSLPKfV0CD3KoXhuS/ynBzWqBhC9r+kh1dfA3rFl9ZJO5yODaH+YCT+2lxKVrRPK4QLCge3ur3QX7biOsChSbVcW7SsVNg0u+tYeU+YzmeDiZ0lcdLJ9eom5C51+V+pI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734745554; c=relaxed/simple;
	bh=7OkFZ5Ap1is6D/CmihF2ovIGaAZkZjKwg+5ll1WMswk=;
	h=To:Subject:From:Message-Id:Date; b=aC8wPwEE9O55xPF5kXThqTmjCMTzraP0CVdkZZVOqtf11gATIr3XqcgzWjWSmdujg/5YfK5zM8deaxYS1bt2hmWJv3frOR0CFkdKg7JAbiwO3RkruVlrO1Sk0c1fbkswsx8E6jsufyxK0C6GVbxmJPE3ILKh23TPjl7LpwFgvys=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sAYI+5wz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sAYI+5wz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2F8BC4CECD
	for <ddprobe@lists.linux.dev>; Sat, 21 Dec 2024 01:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734745553;
	bh=7OkFZ5Ap1is6D/CmihF2ovIGaAZkZjKwg+5ll1WMswk=;
	h=To:Subject:From:Date:From;
	b=sAYI+5wz9hMF2nq9mvghKIkI1sB1kobWrpankewYxelLXGwR3gC7NbBhKBCR+qFpB
	 8lN53iL43XHRZBslIMA+3FM7Yzcr+3be5EnjqxrhZmlm2f85QoOlcHqJudWkPpDeYP
	 bqtmBcTFt3nTy4FfWc7ycP7IpaOodMGqm/D5PiAYf+lIvrAXkUvRNj1ZKruTHO/VqE
	 3obRsdezT/Knndq3KWP58CPQyHJwKQ67/SY/VujBcknBpSyF3oCpQv55uSuxHmfSe8
	 Uda4RCmidDq3ygBVypvlLBkRDb/u7O9TMXj6LKzz+I8xyF9dMZ9V0Jwof+SqSukO28
	 XPoGmMikwYEmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91B74E77188
	for <ddprobe@lists.linux.dev>; Sat, 21 Dec 2024 01:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173474555358.13807.6531726201441607218.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad71734482f588f0313e4b3748c7137b75938a5bc423fa400802d546d776ac6d
Date: Sat, 21 Dec 2024 01:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734745553
