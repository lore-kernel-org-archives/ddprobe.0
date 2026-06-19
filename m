Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EF943B52E9
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 20:56:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781902594; cv=none; b=OtFbqA6idp6Kt2Y/uJSehQ6dMQKPCzYkeOWYp7N3JHztSzn6Xj+NgcLFmbc37/WhyQO1jLaL9EX8XPgYWDFpA1rWHsj1xTnkPQM9kr/Fraig3YtXHTdDf277rSVXc8Am9rO20jErxHvO7EAnr7Oim28wPe/oCIpsbvJO1jWdnxI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781902594; c=relaxed/simple;
	bh=xtzpR++ZBXNjNTYTdGVcGErh0LzD6pz4VnS18nWP0ZI=;
	h=To:Subject:From:Message-Id:Date; b=sDRsybpaqka12Vj2rSJSAoszETtTbb0a3B+imNlwG6JeFQvKOkn6/OmpVWxL6BNjroKNzCcwFn9j95YB3FUH11+38MvNTCtekCUzL8FVCy6G7GZBldebLMu5f5wk+biWgO82MxwzhKd7HQ6ebEI7uJ1R85ATl83dizBq7yKZd8g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qV5rxnUU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qV5rxnUU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8A05C2BCB4
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 20:56:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781902593;
	bh=xtzpR++ZBXNjNTYTdGVcGErh0LzD6pz4VnS18nWP0ZI=;
	h=To:Subject:From:Date:From;
	b=qV5rxnUUGLyZi6a50SWezXZV0jH9bkYF6UxApcrLIoDKvVS3XXScdq9r1eERy0QoM
	 +s1gFRSm+97yivo4sVrjipWYk13rUPIp5pSpGwI1kfw9acGSsJw/LFnaEPxT85DjJm
	 HyFalm45RfK88E39Bxjc30vWyC+QnF4DPKD9hr6OiNx9sDBW2KqADyXUs+rDzKJgEf
	 u6fhZO6shWxSXO3UldtsZuPMughqOeAt7CeJgbo4YfuxW6qWgIzjN8crhUgyG/fGXw
	 P3s9gVPZwByIHBWQpHLiRDF6sSvr0fMnzxNePrqxqf7u1hgja2hPHKMpNPXIfOPiQI
	 xYE97sfqkTWCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD8DECD98F2
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 20:56:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178190259370.23776.12593781318051569354.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ebcd9b46cfc79f9b03529b9a348adb7649e7ed102b6bace673859497e30d6d3c
Date: Fri, 19 Jun 2026 20:56:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781902593
