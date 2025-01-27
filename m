Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46A951581E0
	for <ddprobe@lists.linux.dev>; Mon, 27 Jan 2025 16:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737996954; cv=none; b=je3gs8OISXCWPR0r6E2/ZQHqoV2T3j56XgpYS1FJruHT4iJWvTNvo7jPxgVk5sVcN0Aq/8bHDBZnezAGwqbfrlSkakHx35zjUC34bUU7gEUxhKkTq6oVKuifsLJe5shhTG8prfbiV75m8EgHkDLQQOYUxtrRcTZBnRGBMUdl3s0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737996954; c=relaxed/simple;
	bh=U4TibiSlvarYQf/hRLNankz7uMcqpl+gTpI8jOrqmJ8=;
	h=To:Subject:From:Message-Id:Date; b=C6KVnjiqnSv2RQx6NKflq0dtvdZEd/MKY3uW+8NUor2DTSprGhDC0XwwfzSoAubfuO8zWLA//Mt+/2kgtthOgw5UIQb1f++vSVRECK9mGogzcRHWkXn3SdfiO4z+oY3HQQT4+CF94P1AdduTtEErTIfgrTMl2iCfguYeyEiSZ3E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F7wE+lbZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F7wE+lbZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC860C4CED2
	for <ddprobe@lists.linux.dev>; Mon, 27 Jan 2025 16:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737996953;
	bh=U4TibiSlvarYQf/hRLNankz7uMcqpl+gTpI8jOrqmJ8=;
	h=To:Subject:From:Date:From;
	b=F7wE+lbZvM/B48vxcaUQyF3fjRTPFPvqvJD9Aydj78w5ha+HbfqvjA2LfhyltIcI4
	 JzSRlkdB0MfPJmptMi/qMFO6tPnOHnqnylEeApWqXhSzZi813q5S8snhYVFGAP/5YV
	 ByFTHL4CeL26WnP2LoSNoLWqONClWKafwAWObDhQLFsL23Kru9AewR1zx/Y156gXS0
	 XySZWA6Oz4FQVu8TOix1j1VRs1mZ4dycD3Olot18Qdhf426Y1AEdCxCSkjsN0y7Hb7
	 DUx/I9QwUTOXVDW9vpH5ZvXDWKrOVCxkqkmw6U7nHXlvf/J/mn/zbTEWDJj1wEBNav
	 g8aZuGDtI7Psw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9C9AC0218A
	for <ddprobe@lists.linux.dev>; Mon, 27 Jan 2025 16:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173799695366.22896.13276817079834307826.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8a8babfce898e3cdc7210404f6665a535503c07b6a59979ee8a18bda75c06852
Date: Mon, 27 Jan 2025 16:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737996953
