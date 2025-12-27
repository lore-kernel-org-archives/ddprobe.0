Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1332C21CC55
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 06:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766816634; cv=none; b=lmWApY8u5DfU3RHGSMDHhR5D8Zz8iATIKqN+WmodgnNlUnKZCggG2dvypRvv1hjD+8tRKM7gJjlSAA/ghf0ZZWKOimXiHUhZs9LJVwExbZ/wCWbXiDsYSTs9j8d4CZqjxWSxyW2nj8O5ZVzHRMqb/HY0svQ9LZZJVDdhVJogHAM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766816634; c=relaxed/simple;
	bh=BWOvmA1+u0dGHyAlBN0uLX34DdUwMtFMd1G3MVSbrGE=;
	h=To:Subject:From:Message-Id:Date; b=msYY29Ig0tmTauL/glgqqAsQ12qAcSHfty8JdexGrggfgHJFVpuNSlRsxxUf9xEGNjReZg3ITad+ayreHUbiCocar5qLc3Kl5LOqf9wiI5OVQjqu5vrJhg8+rf2qMJkkfyqGq3P30ljlSd+ti9zB2rguGrlm9MKtSV+j544GEqU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U/6hLTFX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U/6hLTFX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FDB6C4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 06:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766816633;
	bh=BWOvmA1+u0dGHyAlBN0uLX34DdUwMtFMd1G3MVSbrGE=;
	h=To:Subject:From:Date:From;
	b=U/6hLTFXT7NxWJWC4vpEUUjbr22W0votwvIXVH66EaERwU/BjdtOikCm1T8hjpNxK
	 Qhsm1c4rmCX8SR2tL3Ccs/DfEeVfa10FoH/vCcqMDGEKzRfmK8zkBxYtcqCzfDXqtX
	 Pxxg+gQ8/RAhy12iLs/bk1VrzmE3TseYAa+gb6ZTYr92WTS6VAImZysdsN1NT6172M
	 XLWuH8Oz8ns6kWQT6iqc7N8ia83DBNlM2+DnVKmqS63rqRhVHoydJhAqmBrM1xXsNm
	 8gS0cy6gg+kw4Q3pybilusdH0ltOrdFP8YwZHx7L0VsV0S511YVa52RDYVGBQZIpHO
	 aSQxAlgXB95fg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91338E8FDCB
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 06:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176681663358.8179.9385129773940104954.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8cf096b538777777e499c91a3e25a4b8aef6aa9375dfa34d783de421086f4afa
Date: Sat, 27 Dec 2025 06:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766816633
