Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7222F22612
	for <ddprobe@lists.linux.dev>; Sat, 22 Mar 2025 06:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742624994; cv=none; b=MJ0crX98zVN0VDiRWy2YDsrT8Ush1XHSvHOqI2JYGsO/XPfuVDg1QdUdqcJYRxb+Ev6syGOofxU2cq0fdnaQ8LdYD4jWhgsl88yUJZz/woD21KrdF/silk0ayw3ELjh3LqdB0XhTLT9ysPJ5JzdshXqMXIjTDoxIfYJ/WX3kZRE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742624994; c=relaxed/simple;
	bh=vTebJWFrxrWuB4s4BQ10+fKUw7EOKehWAixsy1Q9MJU=;
	h=To:Subject:From:Message-Id:Date; b=uizFunjE5Zsq4D78+ivi7uQ+M6L+6mNshbcJCOnm9kUL277dvrcAEvJfFtsAg4p8G7dZh2fMu57BWaIVSyZUNygHx2KpwqPRCIEPJAlQKawr1rTU7SKC/P83Mm5Rqax9KuCv/WGmuYhWOXEGDNlGPY0y5TTYkxNX+9YpDJ0rJ/4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QMzdyVDD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QMzdyVDD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7B00C4CEDD
	for <ddprobe@lists.linux.dev>; Sat, 22 Mar 2025 06:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742624993;
	bh=vTebJWFrxrWuB4s4BQ10+fKUw7EOKehWAixsy1Q9MJU=;
	h=To:Subject:From:Date:From;
	b=QMzdyVDDvbrgzQAHy5hVjHJIG7+WZdHdxMdHli8yl6BJughXJllGwhYk8XL31a4pT
	 EZdztT+Wl0pyIXZYKxtP49TOqUbQxxtW0tUfi3F1N2w1VEUEJqPh67iSrg3QCzHiHQ
	 2X7frxCWiLm/vzrKUh/CY/1xXfF4tIAMF4gRrjjlTHh5BSd832P/pdSd3+urT0ySSx
	 iOu4Zy7S3PeLRoMbF0SP1rM3r/THMm9efBrlhgKZkfHuloXbmWYkNGGmPAGH6xDdJD
	 fhmXMACwJim3DQ7B6FhKBIc7lWwByFe2lRmzC0xLm5NUAa86nzwIiBlIMIZ3eXZTP5
	 YBqUZZDnGYSIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A83C6C35FFC
	for <ddprobe@lists.linux.dev>; Sat, 22 Mar 2025 06:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174262499363.9166.16417494709833102929.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7f7120a0c2b4849a40d4e1a8a917fdd69dba96b80965ca79600a939a3e88171a
Date: Sat, 22 Mar 2025 06:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742624993
