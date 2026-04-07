Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1641F3D1CAD
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 16:45:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775580334; cv=none; b=ohIjCJ3ZsQIR5weYbhrjaeAFgO3sF4o0ov7LvVziPwK6e/1UX2DK3FyCstaH0zyK4URJ6kVU/HATpG+jdlLN8qCYlS0PVricJjDTd4GefcEEKPELpevxm7gnhkk4wLlmPxIc9qOE/7+VFfmZ0nnqwzZkFI5zsHYqq4ViP13+S64=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775580334; c=relaxed/simple;
	bh=YuECpCWOwFQEvxOSsZ276jmkDLzm6FkbmecB7/GGAqI=;
	h=To:Subject:From:Message-Id:Date; b=UdY7VwE+kTa1iVzB+O8hBDXFBXBAQ4O2J2FP8vmxYnh+SvUi1Z8rGsCetehKSTvoqyNEcTyeey5hYsF24AW8te50VIYQYqGR4hN8WPekAMm6XA9nMHryu4AFlhlRo74sLvzgxA6aB5Ankrx5itWqNqfJ7u7OHqw1CM/AGbjLpwY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qOUGzVGs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qOUGzVGs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B927FC19424
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 16:45:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775580333;
	bh=YuECpCWOwFQEvxOSsZ276jmkDLzm6FkbmecB7/GGAqI=;
	h=To:Subject:From:Date:From;
	b=qOUGzVGseE6Ff8dQxixt5Fu1rmbPERFmNQrgQmnl3MJnWNUH0974uNpehf9CB5vv1
	 MTt8odVqgRY0dPKg3j2hCKTKo8QHDUn/QudewlJynY6NfL0okj1J3k58SsVydWR5rX
	 /ZYwEd71fp0fx5nsgZPRNGWqVnA63V/fS1GtFaOw5A9/Nj7gdqLtuEN6wgR4ahHMXT
	 gFkq4EB/YDDRgJw+Q1vNj2XI6BRFt5frvZtyN/p5Pywu9ZwqfbsKEGWxnAxG/rsY2o
	 E/5lENl3i8KFs8gHA7JIxcpIQL0d/0sORNV9rIELrp/AMr4v+CjNePiqHkA7wA3Cec
	 FFJrgzW0em0zQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9B8BFF512B
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 16:45:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177558033368.7964.12123002806464201640.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9171d51ad1b4fd98823895579e63acef76ada90ede02381ce045142baf284f55
Date: Tue, 07 Apr 2026 16:45:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775580333
