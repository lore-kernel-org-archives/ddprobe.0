Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CDC8436C
	for <ddprobe@lists.linux.dev>; Sun, 20 Nov 2022 01:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 84A1FC433C1
	for <ddprobe@lists.linux.dev>; Sun, 20 Nov 2022 01:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668906654;
	bh=FFZYotVwZadTcPbFavDurPHf/3wJOmEwsfC/haIMdcg=;
	h=To:Subject:From:Date:From;
	b=kP0OSbqbUBVVUV1GMYNdvuv5XIOYCwN3gmqHrTUqHFlYdqyxmvca4h3/T9Y8IgQSi
	 AS7UwA6s9zCuTScHbAJGelqkLT5nas+d3ybrePdoKxeYh6+ZbI9TxtMHVWapIH2lhQ
	 HpFimJEHMOva8VtAyADcPOPSAnQX/yrGVNQtibQ565Q2gNhXWEWo/ybU2PTKGomLvA
	 us64lK9WNrJJIoVssEwXor26MxMHRiWCSOouk8OtmFL7FX0PjRNTcLTOl61XE4AhfF
	 wbLdB2umvOUTC5jNodFk64HblOCVrKLT2jDISR7hmSRse+ydS8Tj3C7CMD2uR73kHR
	 EP/oHfzuY0iOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6705FC4332F
	for <ddprobe@lists.linux.dev>; Sun, 20 Nov 2022 01:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166890665437.30025.13271264352536010963.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 830c9e3fb5753b7e80c312f8523518e84c6083490a040db230d6996355f6b290
Date: Sun, 20 Nov 2022 01:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668906654
