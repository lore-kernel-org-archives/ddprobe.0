Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33F887F
	for <ddprobe@lists.linux.dev>; Thu,  2 Feb 2023 06:36:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D16B8C433EF
	for <ddprobe@lists.linux.dev>; Thu,  2 Feb 2023 06:36:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675319765;
	bh=q/5HBB8/7TYBwXpJMWoUNoJxaDHPEqK5yv+uHKONSUk=;
	h=To:Subject:From:Date:From;
	b=RijdIfS4h6f3+r/s7MQx/rHrIpCc+oWUyOkr+bm8pDAOG9m6yImYaSzscp3UrcBpt
	 UTMu751hLEpbtu/NSDzeNJl/U7bfYa5cA+EEM495GgwAjwTDlO5sQ5Jd3DrvcUeVkp
	 b23CQ06Zdh/sVuPStI2TpPs9X7Ym6BzIbsDzV4gTeYKuLHjbiRU2D0SMIrZsfb4kI0
	 RX9fITXSYR8IRQLwA3OmCb9W0ZNdbLdtd2N1YQeL84c8mbujNUI0b0waNEGSdBaOrH
	 b7jUeYg6U+P6pPfbYNnJZ/rK0ajsiTlwuXdJjNFBHyta9C2qVe3We+G3MplHUY0EpF
	 BVregNueiIGPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B61B7C61DA4
	for <ddprobe@lists.linux.dev>; Thu,  2 Feb 2023 06:36:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167531976573.30949.1901637988025644557.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5701e1f917bd9be6cce850d21ad7d3a555b94e79cf9af28f284e7a3c12616ede
Date: Thu, 02 Feb 2023 06:36:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1675319765
