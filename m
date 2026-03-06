Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FF6E370D71
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 06:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772778894; cv=none; b=mKljvZYQNBg/FGRslvcaz0quNjJ2W1JmyxgDUQzj9WR+AirE355WnBVABISWs/JldD/uSSHxOegwO6xnslp1gQXSUWtQYtowCpeZ2fHqX7w54E+v7W4D7gsPlhEF5+F8ruD2/XjGgpzCP1vPwNhIQkpq/dK1LzfN18j7/9c2NJ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772778894; c=relaxed/simple;
	bh=nlEVhGt4Bu6r2ko+TgmlKEZC88G0lTSnSNjlv2sfPJM=;
	h=To:Subject:From:Message-Id:Date; b=lyIZ6DjHt/HoxD282EqMkRloNGbDBv9QQVFLUpgw3+AJ1SMIU4eTdBcL3JH3PwwXVbi2ThPAl4qYl8EuozrmY2qnfI34yHPNFB+bVAZLEW4ay6LA7ZMUzkrvpPYS99ChFHlHed7kSiyp7GmzDMAGbqcuZqxSXvnOOeOCkHPY9Eg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ujb1l5ix; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ujb1l5ix"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF7C1C4CEF7
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 06:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772778893;
	bh=nlEVhGt4Bu6r2ko+TgmlKEZC88G0lTSnSNjlv2sfPJM=;
	h=To:Subject:From:Date:From;
	b=Ujb1l5ixXMyOb3ATpjt/e5FAauzhT5C9qKZo5bYyCpGjI4jf51hfFYhEP/F0Wc4Gh
	 J49M2lAhVhfRGb5KUTTcoOIz3PiP0sY49VaspQzMzKYDRY7y5Tru8MXp3anwBruHv5
	 h9XNEPL2JxiI3fcW6Vi3c6xxZpAO2ffJjcX0VRRn/Hw+HV3QupAHdxEBVU2BF9KzWo
	 hx3TCrOVtbvsBfEEd0FGOEz5j1+ss/nMMFzcMlkqlyXVtuh0+xIEYKIttpGHPhFhqb
	 /1F7MNB+V0J2KTlwg+kfLzSZT6FQ/UASWW8K4xKqEAG5xU1i+K5RdGyW5h5l+IssLE
	 3CFebyUovF3Nw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B40BF5140A
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 06:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177277889362.28648.11538306759275392407.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf3f64e82f6fa8e21fba4de723b892fed1461e73e066cc911b08d8f3baa091a8
Date: Fri, 06 Mar 2026 06:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772778893
