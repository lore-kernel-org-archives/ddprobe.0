Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 192A62D7DE9
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 16:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778084854; cv=none; b=CkHFsamPAVxozShubo5i+TqnpnobC6a9Ic81h3ZEVKlggL4bZzEuqSa1ogT9V5mk3qstomrIUxxl7qnRPvg6VAuX9Pd4cHCyvNlGegYyByZv66RpEYNvRgeJUhuYIJIqZO2t/IFVi+UB4btdDhJOvZakwQ8iew7nrquRn/l5nNs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778084854; c=relaxed/simple;
	bh=Qd9I4tG9I/KRonR+fwZTDKagCAKvGNumy02Cp/WdBjg=;
	h=To:Subject:From:Message-Id:Date; b=kgh3JgH26W+4+FyKk4Zrs7TNCsNiLXQYFpz91RAUxc0y0fl/gAEa5w9GW+GbnlN+6Ye87UMeQkId6I0H4ny9JzdfA2o9F9wEPyIeQiZr0xUyU1L3Q6HalyPWzBIszsYYLwHvREI71qu8IRDQw0Crv/uoDuHIWQYlf5tCkVX9HR0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vDjNi5E/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vDjNi5E/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA9B0C2BCB0
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 16:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778084853;
	bh=Qd9I4tG9I/KRonR+fwZTDKagCAKvGNumy02Cp/WdBjg=;
	h=To:Subject:From:Date:From;
	b=vDjNi5E/c/C2E3CyLqw7ZHq61VSLTEI7rNKxJ8pMJT0fhnoQX6MKwTdFwAVNnr5tS
	 BgLpBjXlCQT8f8r4zLjo47Qn2zFhrYtgAW0g8j4IbuRAoGHPDf+pYUYN3aQUFEfXzA
	 TzvZm443NcBW7Zebyeazwx2iQtN9XQfixLDavzEE0cPSp412lpplUfw1N7WBishyXt
	 ZV7gUA6o1g7gsjDWKexrtR0b9lRysT31lYkTSc0h+8g1fchGk75hQXx+9yrgRSi7Cx
	 HStqy83OvZI4PYZCWVH2qZI32S21hELI0vNkmMYUwlagdEkpC+fCJrEMkpzcLWuchf
	 rc3hTnN/RiWqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC6D8CD343B
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 16:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177808485369.676.11940161253032166190.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bbfcba2bdd86adfcbcec41e999c759559b0a152876ee87d7cdf9ba2107c16c00
Date: Wed, 06 May 2026 16:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778084853
