Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B9EE1876
	for <ddprobe@lists.linux.dev>; Fri,  5 May 2023 05:27:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id F0621C433EF
	for <ddprobe@lists.linux.dev>; Fri,  5 May 2023 05:27:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683264426;
	bh=tFQ4FNFqxRaajrVxC1H40afrfosJdMUc1pz9MrtizLo=;
	h=To:Subject:From:Date:From;
	b=OEYwPC44vle6meN/vv5UBfu0oGQJ9Tnihw6dztNuRRTFsdvd1nggJkHFR11sjQ+gf
	 lWwFoUmZdZJ2SpX1J9CFx8gHivtCRmtanvhCexsAmmuZ3VP2v+93FeSUc7Arw1IVub
	 fiRoVjtrZnq2DAMOl+a9OWXQd6lUlIfHkiv7UeDhht9be/occkcrA3RgKm751uBDRh
	 rGNCAfAjtigpE2NkLtzjepr3n0tSTHgwiYyjdl5Q1xzyRQRo+kOYEx4i4yPi1suGuN
	 Lt4GV3DBlXMeQsbsrXg8NBCzY90fV580ceL80m+WstFqvI+jeRLDJ4MyHU2IYbO/tx
	 tMYKwN9W8pw/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE3DDC77B7C
	for <ddprobe@lists.linux.dev>; Fri,  5 May 2023 05:27:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168326442575.8407.9705887203396961659.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a6c2cdda4bb14ec901048bb8d2857cef92b8ba5240f20c04710a02c0deacf333
Date: Fri, 05 May 2023 05:27:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683264425
