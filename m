Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D9BC362C
	for <ddprobe@lists.linux.dev>; Thu,  8 Dec 2022 03:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7F2ECC433D6
	for <ddprobe@lists.linux.dev>; Thu,  8 Dec 2022 03:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670470854;
	bh=mnIXFiGD9Atv/qq6HBjn0R0w/mRViNWSW4i9GDY410o=;
	h=To:Subject:From:Date:From;
	b=Dax6WO/VAXy4JcRJki2qWf0qoNCwLX9/p1OxiaKQ7PA2O7/m1hkg/A+TWjmNFQU/R
	 BnkFrFtwnDykorfQ6z/dkfTPWUMbPFCVKJNCW4ZT3jh5+2hRFmIP6g8oKGuS439zx+
	 8q+wixsPAcZxCYTlm1BVOLtyrZN/jV5DZAVHSFWT/rQuJ9oY5wHyc8s+EfDxT2QlMs
	 OzUKOKRC2Y0ty5BRM7ORmSbNMOddFwX8HOMNxq4PK+FS/Gn7TKb+TggXsfOabRod5C
	 ZOu4QRzqIodNIgvwMhFUeZe72P0cUPTQ/UAvIAVPeiTxWt0EJpOBuHU3MlLWAj0p79
	 0btYGUyDURetA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 59F2DC4708D
	for <ddprobe@lists.linux.dev>; Thu,  8 Dec 2022 03:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167047085436.31885.9651099430020984589.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 09795bd13912f73ec205f55c53403171d4cd3cbea5d4aa278d1b9ed4f11f3bbb
Date: Thu, 08 Dec 2022 03:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670470854
