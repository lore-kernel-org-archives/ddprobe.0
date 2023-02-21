Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 482191C07
	for <ddprobe@lists.linux.dev>; Tue, 21 Feb 2023 09:59:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EDE04C433D2
	for <ddprobe@lists.linux.dev>; Tue, 21 Feb 2023 09:59:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676973546;
	bh=URlcowxUsutCp9RGGAjaCzzuPZjsNBdhTuKi024iyUA=;
	h=To:Subject:From:Date:From;
	b=ndcUfxMAFjJz/DdvJ64DIEOQcFClkms1uK4pQRN5b3lMU0qsmX8kbVZdlRI50MzhT
	 XXLrZQHY7A+c06VYkEiylfbZQzCMLPYG0/ERPjhHYaLKttg3Df5fkCmJj+RE/y6lRt
	 KAX0i1CrHiy8uA780f0ovjepsn28+8iG5/cFPzaOqxt7vZznZ2w0/QoubjRmapm/np
	 2bO4s0xjcZEB0wTTiTdy5onQ+z5r3q+h5J3Afc9fj+WC8yex4SFpA+XT0M4wc9B8iR
	 QpT2VO4mysslkIbTs0FaAa5u3NSPwoKYZIIHgujPNi0yu+BVGZc5HuZqaaTHGy76QH
	 rJyt5yhaZChQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CEA48C6379F
	for <ddprobe@lists.linux.dev>; Tue, 21 Feb 2023 09:59:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167697354583.15862.7394111824294116602.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ac7864ef0161be4d16dfb4a48dd5c1a41afb7cd0884dccbdfaa71b72d02919d2
Date: Tue, 21 Feb 2023 09:59:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1676973545
