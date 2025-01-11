Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D6EEA55
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 21:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736632554; cv=none; b=ZTYdyn7mSdTv4KHZijs7w8kKDhMSosxsgCOoCMJN3tJ7gNBQAJwoGRNRWpCyDbyHG0/FaMxRuUN/HnjN1u2YZZRG6aKe2L304oSKAZycQ14CVh7VJmnN/VxFcdrWRc2AfCcv2Fgqwk8sQmkltjMPwm9oPi4+GanO/asO8FBQVsA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736632554; c=relaxed/simple;
	bh=vOVnWJqL7V+qy8979IGIyFBwiybD/YGQ/52OGkaRLqE=;
	h=To:Subject:From:Message-Id:Date; b=CulGVy984iJHustP6/kSnC4RxL5kKDl21uNNBC8rVlykVOwNNPg1oxOjQZLjlqGslG8V9l7hHrs2sEwXlwt5O8LNrbW9p/VF0+LjvlwDvnf/IZfdY0gxn/MSYA7rHRAtOVCnxXJHRwQC0HdLg/Ra02/t65teJRNgOKthuL4iQKk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FkyqY/02; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FkyqY/02"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B34C5C4CED2
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 21:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736632553;
	bh=vOVnWJqL7V+qy8979IGIyFBwiybD/YGQ/52OGkaRLqE=;
	h=To:Subject:From:Date:From;
	b=FkyqY/02RhrKz/gMWAEkV35TPrYcNDYGCu6uceJjL1LxdPVviKPkviONuTi9cj+te
	 EU5nQ25cvfubtfY8QQUWoL6gjNUANSLsi2d+f8qI64V3Rc3/bKXUz8zm7uW/GUE0q6
	 sAg+QEQY/T8swA961NLUlNiwWh5o78rExz51NONy7xmHhg2V/WA1MXbTMoMfSR8Mi/
	 UxuEyrvarve4tL9tpjCPqhMbHrKqVUqR9D+oarRgujeu2IJ4xJqAE8P0FeZbBdjEaT
	 MTU+EcxzxuWv/4s8K6DVvddvsw8YbmJ/cWRuAYowfXg/C3q/IUwaNicK1vrH9hQge7
	 lTcU6BdK3lEuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B82CE7719A
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 21:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173663255361.27294.14726416592456908607.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6823c5a424947ef433169532a5d450298eefaae951bd32553b300fe46d76e90c
Date: Sat, 11 Jan 2025 21:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736632553
