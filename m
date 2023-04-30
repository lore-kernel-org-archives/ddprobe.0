Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A8D037A
	for <ddprobe@lists.linux.dev>; Sun, 30 Apr 2023 02:36:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB47BC433EF
	for <ddprobe@lists.linux.dev>; Sun, 30 Apr 2023 02:36:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682822165;
	bh=K3pF2uw0KSuenvonxQb6KdoFpjEE/0O4hWhCtWJYK88=;
	h=To:Subject:From:Date:From;
	b=CbiMuhVUUBDRnyljoeq39WPanv1vKeA4fYSYnHsC7Q+/oqbbmm/QH9Myxyp+fdBmG
	 JwMlWiYPLFOvXjxzhFJ7LZ8SCDHWF7kz/PI7gfVdORoVnvOg2HLTZv0lcZWAG4ZdiR
	 +2GJRxYZ5uoph2mBG21bhzDU8+CcXhDCMTXag6KU+F9EN9VIbHWnInEzrpqgewZzxl
	 Kj3+T2vL5LepODVANZLV4CKsPKAL+FOHA8yQpu0T9iGb+/E1280P8EKMDN7ijncleL
	 PmlB6OwXq98G52s6Fmi7oPVP8DagRWt6q91mcdSl3fEUrU7UV5dO5wUUI4TzU7+zNz
	 FdcuwFcLiny2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BBFD8C77B60
	for <ddprobe@lists.linux.dev>; Sun, 30 Apr 2023 02:36:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168282216574.10819.8367769544270429737.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8310f96084903c3827c8c48a348e68471d812b50d375b4771f23b9a670493233
Date: Sun, 30 Apr 2023 02:36:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682822165
