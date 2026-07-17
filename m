Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 452EF346E44
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 10:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784284714; cv=none; b=n0rYaIww8Y8w1iouInZA/oUUBuC+0tLn7OWzNhaNiWkceqz/k18+Dhqg61iHSAFZDIcHxr3I1Fo9lJDJf9eCmxZbXlOEn368NwzOl/D/vpkUUKKrx55Jpdfw/CYyONM2yO1USZlkpFgSj+QM1dCegiwc4evGOANs7Mt5eXqajaQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784284714; c=relaxed/simple;
	bh=CWsYBQnHIkBmTBFPOpL3Y58sMdV5dGfKk10F4uN48eY=;
	h=To:Subject:From:Message-Id:Date; b=qOhUuDX3sOkwJRhiYvRysk6H2IXao+ScipdkXoROQ6oIQek6NpTx8UjLE2JImquqiu3Z4a5AF88waM/xM6dnI8ggOeRj7k5zT1pkEAr6FfxHBgTdIenZ43kzb9oWXdPpVO5p+SwCHLvAPNHkQJfgGApouAbGGxdK2WY/fFe08jU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qj8dAfgG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qj8dAfgG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0F07C2BCB9
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 10:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784284713;
	bh=CWsYBQnHIkBmTBFPOpL3Y58sMdV5dGfKk10F4uN48eY=;
	h=To:Subject:From:Date:From;
	b=qj8dAfgGK0jFEemQ3WMLfUI/s3XSavdGrdz81wb+TZLawh+JZl/pYywHZdzM8s4qR
	 FtGoPOvpgi0qcpdbo0ECuthm4kcHZBc8fj2YN+7bulQfrGx0Pcz3ujaH9JhSZH3P0i
	 Q/fa0TR2HwtwivC9P00ozGPdbz7hPjllZyTT4tSU+4/Vu5pNa9B/SSKOv/Rf2VIr89
	 dyaCEuAe/fn34k5f4YQYMhT9gWgnh/9x5eHwccQgSUa2WSLjqE2ix+rHMMTdXFwCyZ
	 4kiLxhwXIzGR86CJC4D1+Ul6eed5KfV2AKFViONO160rEOohso4p83YUDqyGgFFpob
	 aBMhlAtLMVlXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC91BC44514
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 10:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178428471369.30635.3016903747165282382.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fa9aa9e8b13acb71061d4bebb0030d66dc30fccf26f2ef04ecfd621d07009df2
Date: Fri, 17 Jul 2026 10:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784284713
