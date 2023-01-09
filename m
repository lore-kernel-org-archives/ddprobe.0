Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 02B4D5221
	for <ddprobe@lists.linux.dev>; Mon,  9 Jan 2023 21:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id A96FCC433D2
	for <ddprobe@lists.linux.dev>; Mon,  9 Jan 2023 21:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673299287;
	bh=G+hAb9vcAdseVt9we9tld3cDDovOYk/8BWl0ny6tw0g=;
	h=To:Subject:From:Date:From;
	b=UAr96kMysVZ7hRo8yy6d4u6QUdS8vIEbh6KC01NxD8T2j3o6eAaIvK4YqZJSechDk
	 Z+CsN/FTPO5JL8sJeOWOuptDXCOCN+XcA1kIYXkjczSHs8+t1b3xawPzja7pp70AjI
	 i5j60AFSMPHh7H+vmci/cZPynmJIE2mrcFGKUtVNGLXEiAg0bCv8njJM5JD34Ck2v+
	 bQXJ1vYWcMNGV2KWYXCB1fJ6gYpFMwGcQQRc0W144WNkpnRtOIl0XKoZFmZ/O/otRD
	 aOyhpwABL6boVlFLvizBQQqqrri9ZRVoIPlCiV6DVDTJRTDdPQsCZBID3WElw2gq8A
	 OJ0rJHT/1xKzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 75C1CC5479D
	for <ddprobe@lists.linux.dev>; Mon,  9 Jan 2023 21:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167329928745.26760.16602461390405797796.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bd969202b32448f9697422f5dec16d962a5baf2bb976b0bd6727f763709ca72e
Date: Mon, 09 Jan 2023 21:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673299287
