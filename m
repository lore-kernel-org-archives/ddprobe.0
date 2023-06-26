Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7407B628
	for <ddprobe@lists.linux.dev>; Mon, 26 Jun 2023 01:53:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DECA0C433C0
	for <ddprobe@lists.linux.dev>; Mon, 26 Jun 2023 01:53:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687744388;
	bh=5ONpIfiqdXtjgOV4f2vo1Th/vNFQIQzyDeIAky5tvZ4=;
	h=To:Subject:From:Date:From;
	b=KdXjerwCVP8Pchf089z0hchm6K7hWUdc6WXGFxM5qd+r1opF7ushnVBErZTIS982W
	 FDfid2XOL6CIZ4xH0pu1Wf0RYm/ezTFUMjqNZmLef0KyIZW5IyjK7EXrS79obZuJ68
	 DyACImsFcSXo2UBPe4Iyq5EfXfDFQocwpPu1XHibhkC+RSD8Sr7YfHoRdRGZOsgBg/
	 Lf0DZwX22PWqlATI5Q+5hd5hA+dXLsfPnxCQ4t/AMLHbwWsAR9AYyAxohFhuyA7AQm
	 PgzwYRiiQerIVRHzRDzqGAUXr506lyEZ9gFeszdVatTCIUngkoIDT5Tnc/AWytiYvW
	 5/Ju3M8fLnB0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1EF2C001B0
	for <ddprobe@lists.linux.dev>; Mon, 26 Jun 2023 01:53:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168774438878.18279.17028935904057463042.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 88c56169b25c61816063cec7d16bbf65a2b04c801bac13526f236e613b90e915
Date: Mon, 26 Jun 2023 01:53:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687744388
