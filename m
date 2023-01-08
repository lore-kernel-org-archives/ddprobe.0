Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08E631C3C
	for <ddprobe@lists.linux.dev>; Sun,  8 Jan 2023 07:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 970ECC433D2
	for <ddprobe@lists.linux.dev>; Sun,  8 Jan 2023 07:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673162487;
	bh=pwsSyxlTFv7cQiaWgNrOMt6Z15U4ApkXdd01iTd8K+s=;
	h=To:Subject:From:Date:From;
	b=CRTaaXd7h8X/D9Xkif1XC3nDAcA1qnJLZQQTcKBeut0LwixEYZt72sHmClIBDTFBO
	 zZH9esxRwjDALXz89WhYth34IbPUpCC1Zy1QTNFn/q7/dYlkOZhKZ6vXLslBEhob1E
	 Y/O7hugtyp2GP89aetTvE4RxIrveMEQgrF2DU7HJUv+Vdm7b4jHchtFe3bLg1HNpS5
	 LSlCEPONH1OznIsErX+0u6qWAog9ZU6RZeNpU7tb44Ke3kqdALqr+LU4RU2f6Tww3c
	 70kCle0wxOVXme/lMZ0S2pKgyQuskLnbx83QxBbzdgAPM7OwJPZDJYU14cC3BhSug7
	 1JHmulLl3aqJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 78CCCC53210
	for <ddprobe@lists.linux.dev>; Sun,  8 Jan 2023 07:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167316248746.6248.15125418936323865646.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 444564c9f53c5bf8125ef73e643767140097e5961e6de1d67557936401e281ea
Date: Sun, 08 Jan 2023 07:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673162487
