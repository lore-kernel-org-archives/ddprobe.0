Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46F8871743
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 09:44:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716889463; cv=none; b=chaosr6ObFyWojBU0JLF8WSahKBnCUQc8P3WupHw0h0IoQ/RwXJbz3ZcfE+lLvEnu9+fGU8SH36jQbBYxu6OdYmValy7q+6MoGKfrLAvRileVKGt3Dqwq1Si2tGbrWW5ukrrUTSHHms1rVmXPg8HNVXvSyG+JjS6jd+mXgtAqIQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716889463; c=relaxed/simple;
	bh=CCCXHn98gipuaFyY7HZBYyvFQj7apnU3T2I45PV+TG0=;
	h=To:Subject:From:Message-Id:Date; b=CUwzIODCHSAMgl1enwkR4teRZKba1pzuYd30/jMJwddLUhbcKqOfGBTZqE5qKqq1DwtHq0fw8oMne5DIn8vcBiZnvKvvNytl+ewogsFehewYcFcZjgs4IdTNJW+VVIWrMDJ/9msMsJz4OD6BEMt4XcOLtqc+YKzoqTQfjfKXGjU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SQOivKms; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SQOivKms"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9E37C32781
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 09:44:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716889462;
	bh=CCCXHn98gipuaFyY7HZBYyvFQj7apnU3T2I45PV+TG0=;
	h=To:Subject:From:Date:From;
	b=SQOivKms7Ae4AY6sd7OS9h6la1OZ0lJb95mB1+tgv0WNEbeCWC/n0YOR6V+5c0L4j
	 NW1QAFriDv7OoV4fXbNfKUIegVJbwYScHsoLm+Rlww0502+BBhYkef2v4csc0JvxO8
	 tOY7Jge/y+pz5uOsC0I4pf6SSKp2PPCVDW24BSYnsogYOrO9ia0aiMMOomm1c/9bFI
	 IdvLnhFyY8tCnsY2K7e4yxfm/K1beRiBFa2tNGbzncb+Ug1CUx2KAWAqvh0JtFJWym
	 JsDVKu+c3ulGSFsGpGJZUx/78U7sezbJDXxu3TGMP3pWLqRLkU6lJmSeJKT2LIOtno
	 aBs7ADIXO+NDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6E80C25B78
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 09:44:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171688946280.13984.17579545158085602110.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5a687d6606c71341d11c4b5cc334b5ff934ebab7f0065993d3dac84733a61077
Date: Tue, 28 May 2024 09:44:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716889462
