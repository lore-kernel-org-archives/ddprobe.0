Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 566E728C00B
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 13:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747920594; cv=none; b=azBHNh8Zv2q+eNvm8ljDfMR8ryELh6e/oP++BNL6TB/dPD90L+O/ZDZaAILfqaSRTiVke+hUIGZ9VwkVTuF0ZXZ/3O7Y+HLV8w/2vqxbp88X7iX2628YZeKWfhF0rRT+1RUcsHjyVhUjoxbqh+U7J0Ntu8jT7dRm8vjzeiGXK+c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747920594; c=relaxed/simple;
	bh=eASeJqDbHbqw8psigrU2PDyhXtVctoUAw2Wu4+afr1g=;
	h=To:Subject:From:Message-Id:Date; b=pcw+9YF7ljjgllVK6Vg9uMIWLLiTjNU6omuWMS4+P9JmU8fogfNE9l9YMzWr1FxvmEkQSwqF7Fn7xXxS30LusqbXYjmN+fMJaqB+Ju6dZpAgWg4S2mJDE/Hq5Sg9Bny+pAs0Pt2534dvte9PJay7+yZExAFOtYaZBwTY8xsIh/E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KPtKsF6q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KPtKsF6q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CE82C4CEF0
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 13:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747920593;
	bh=eASeJqDbHbqw8psigrU2PDyhXtVctoUAw2Wu4+afr1g=;
	h=To:Subject:From:Date:From;
	b=KPtKsF6qD8rHfF6tRp9+BXw35gwqs1TUm8L7ouGW0bkiwrioZBuLiDTsl+IH2OzF4
	 Wb8yxwg11gluwwJA4OxxUakAHm8Q6tyNRmz7m2MzlIe7tNL6q38H/HZEZSXD3YTjks
	 6x5S1RG8xs3ulfTyXtufB0X7W+73+99MbSXwCZc5gkffklsncVvuxXvefGtBsoh7TR
	 DbhyWrxyBoY7To8S/xziQ0x0mqTrM3p3IFOZspEJ0SzbtNDUoHbcVjxGUKJUb05I3w
	 NhwdPEC4xCFZnORJe7RaCdOSfxZuoqci2FQlgKcU+LmssPFvWgjmCS/NEnoljEKE4l
	 Z2BnIGuyXRjsw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E9FAC54E90
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 13:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174792059357.19633.13785013730648229659.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 002725138a49de5c471c1a8f957a5efab051ab46c7b72aa327f6ed57df48259e
Date: Thu, 22 May 2025 13:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747920593
