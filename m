Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B4C1D79EB
	for <ddprobe@lists.linux.dev>; Sat,  3 Dec 2022 20:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6BA0FC433C1
	for <ddprobe@lists.linux.dev>; Sat,  3 Dec 2022 20:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670098854;
	bh=2PDh24SydCVYiugE4ExVEZv31PUrE8aXi9JLfhmR41I=;
	h=To:Subject:From:Date:From;
	b=YJFDG45dMMFVG4Omdc8JdtD/ry/WEUmbDsqY5lJtijJeqIh8ZyL56pEEEzEpzvVUG
	 9cnT+peENJ8d7bQGocTGrT0VUUdPchMZo7RlQF5g75cFyxxyatlgf/0NXweCqmOnTL
	 NbnS6ha+jN4cQ6kgT+IWXb8RKUf/vK0DTHtNzAUhUe1E9P+wH4gnR8RifWazCbH8ZO
	 DdMBRXGxnYwMqijfZD8aORQmxDsuTK/L/UN3XhSCB/T0P9LqVCc8wiKBAK7VYur6wL
	 u/54Ju/Oq9TSfACv21JhffTh843+MZ2gE7mhqLEyYe2XGn7tcMcDIjBwSvi5laD7Is
	 9YXWBGDhGcixg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5153FC4332F
	for <ddprobe@lists.linux.dev>; Sat,  3 Dec 2022 20:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167009885432.9894.16811722704195325468.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 487d0664337a51f9c5342d6cc664f255c2b2d8687d0125d5f4b9b6daf475076e
Date: Sat, 03 Dec 2022 20:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670098854
