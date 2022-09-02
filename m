Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CABB27E
	for <ddprobe@lists.linux.dev>; Fri,  2 Sep 2022 18:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 737F8C433C1
	for <ddprobe@lists.linux.dev>; Fri,  2 Sep 2022 18:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662142853;
	bh=wU7RqA4zffsPUMM9lBJ7qvrzspDSmbk9n0hDihXwqtQ=;
	h=To:Subject:From:Date:From;
	b=VB4SnwqHevp7uu1SIome2EvMIxGDAGPOifZ7gwtTg3dX953i6PZ8fpAExd9p817gP
	 bleP00hfmZncUqI3Xyxkf+lhHwgNd57vREvM1KhhBZWESNylzdmj3GLXs/zI+UXPBW
	 5AoISj8hyNSzW+mVnWS+1MK7VoY8UJ5wxdCQIvypUp9PcRQrST9HVKJhzGA4fS3W3H
	 OWfUtta+ly+ygv2MhVta3O/B0+/OmiOGBeUFIaX1SbnyMpLeZkdeWj7OLZzHQQAX5X
	 jXIYZ8bnLogPPscpdU4TxQ8/PCAR/CvXgdgi2eUeZcjUoYI0FJ2pMI2qe/wIxwWl30
	 UdK7+8HghPK9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 588DFC6FA82
	for <ddprobe@lists.linux.dev>; Fri,  2 Sep 2022 18:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166214285335.23236.6239170609760147779.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cabc3ec72370a174bd0e833151aef2883991d35f769795fa57daa1749731356a
Date: Fri, 02 Sep 2022 18:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662142853
