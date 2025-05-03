Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4103833F7
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 08:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746260395; cv=none; b=OHhiaXeKtz4kM8siU2yfZ1vZcc+C8s4wqb93FD8MVhJZxI5gtVGNOBnIjJw6RlFmH/IB4VHv80HFxLzB5eF3iMZoY3vVkXUoZr1hadP4+OTh4+rRqDuywgWOgFOr63+BSzHnWRTaX9NegSSxCfxnwCzz0BGxNfxqPVIyb9UeYls=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746260395; c=relaxed/simple;
	bh=AAd56tzbv/gT/6HrU2SHBhyFxFeTOYYoBoM+CZzNnBg=;
	h=To:Subject:From:Message-Id:Date; b=CtK+b9pGceDYn9Uh6u7QInQfugWdUe7j1ASIQNtroS/Xibdqnwk5/uQ0/tLhYOabWZH26f0jTQ4eRbNyKfJ75DDl0UZPXyGPxelsX7neLHnV0ygfdFAbQf5mzLqd3cWvNnSW4RsvqnNOUx3w7778gvRVYqW6oW9uyADey+g7DQ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Qy2vMxzs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Qy2vMxzs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5997C4CEE3
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 08:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746260393;
	bh=AAd56tzbv/gT/6HrU2SHBhyFxFeTOYYoBoM+CZzNnBg=;
	h=To:Subject:From:Date:From;
	b=Qy2vMxzsKH1ym6NruezWQ7rTmPnm6IcFtkaDe6v/4nu4shognFBgECf/Y1erMTQjl
	 s/j4U7vl4ZltOc+A5IslhPiiYbHjs4/W/jFDyF7/cCRzvRAkg+IttAa2k/zvQSAaJ8
	 4b6GfICYaQZ7jBREafPw6WjEvSeosnf9gmls/o2XvnhD0I/i8KXX6WbwUZejcxv3I1
	 qpNOl2OK2ydUw/Rl2Okg1JG+koudR+sv1vSUhMGDpwVJdn59QKZAqQGutihaXgGEdf
	 +zj0zaJ6rwBy/6LbHDJO80S4navARnv1C4jyULpx4z/Citxyeq7f3ntHMB24IuXVGb
	 BRli5SbGuz2OA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9150DC369D9
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 08:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174626039357.20154.8793086025793158476.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a88c66851fde1a57209dd04c00f3eace59b47191720506aed42776036c9381a2
Date: Sat, 03 May 2025 08:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746260393
