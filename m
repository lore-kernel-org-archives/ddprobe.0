Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1967FDF49
	for <ddprobe@lists.linux.dev>; Mon, 24 Jun 2024 04:52:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719204743; cv=none; b=EcB3Z6HcQ7GwIIAa1Sh0dCjoUN0qKyeEjs5Skedbsd1Y54mlxTwRPBfjBYaGeJFGVEkf0xf1DBno7a2EdczfCsao1qFNyTFp7KoujgP43DvG8MsMRakqaFL4tCUdRqpo5EFULZBgLeFXamD/69rxKJg0KUxspUf+1odpgUws0PM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719204743; c=relaxed/simple;
	bh=Huk07Kbhy5g7bZwpASnGZp61zVf5aRRmS1LlGpbSrIE=;
	h=To:Subject:From:Message-Id:Date; b=FHkzxkvX6Txr7VNy7LqoisUb7/X63GTBRPRkE18OnmdtW9YdDPKVCdUks8CtWuboz3D9zP3fm/RPHpT2ReuHrInaJCxYJEArz0GsucDusR/VJOcBmkqoEWjncClh8KW0BhB02WTtGVdvFSTrKniZnB0EhOFEhjNMJeVuD2dS+EI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TzlqHP/L; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TzlqHP/L"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE8B0C2BBFC
	for <ddprobe@lists.linux.dev>; Mon, 24 Jun 2024 04:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719204742;
	bh=Huk07Kbhy5g7bZwpASnGZp61zVf5aRRmS1LlGpbSrIE=;
	h=To:Subject:From:Date:From;
	b=TzlqHP/L0HTU7qWBtFIZhFzkwfpsa82ja0sD7/U5UJS2td12HRJVJhQztZs9SmkcZ
	 fF89pRH8ssNpgiIRvMwJj2b5Odluo8X6pGOe/FAt4oo5KKsfqXnlfUzBsRnBcLpvgb
	 lVmOAxLEp+Wgn01I/xodB+fsrw9NTaZZ5YMOtUTysnmRQlRnXmpQnj5U/7Y5Ob4qhM
	 OEOIyaN1trKdL0xGVE/TUC34ugvj4JqmMZuNBr5ILRfm0oZwGt+2SPQajGLgw7cRVC
	 B1Xi9FkKiZt2CfhS1t1LTxV6rj6wRWK/+z8Gf15L73jQjbsXiMIP9CRZzF7y/8YPMA
	 6Yen8/BfnxZ3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CAB1CC2BD09
	for <ddprobe@lists.linux.dev>; Mon, 24 Jun 2024 04:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171920474280.7257.14913602011829658414.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f8f147b25504dc315f8006183f189c9129df20f95bf4236349898865ea68f5c4
Date: Mon, 24 Jun 2024 04:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719204742
