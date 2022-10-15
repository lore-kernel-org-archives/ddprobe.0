Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C36827B
	for <ddprobe@lists.linux.dev>; Sat, 15 Oct 2022 04:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7FCC3C433C1
	for <ddprobe@lists.linux.dev>; Sat, 15 Oct 2022 04:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665807653;
	bh=VlZTPucgjzYAjnM3x0mljortQ4ABhSsaR43Oio148MM=;
	h=To:Subject:From:Date:From;
	b=vO3rU7sL5N7NXO7gTtnuKmfmXQrF7gMluv86Uk/7q3qLwByH+SqjX22n3sR7xgzsS
	 cCBuCSgP0oKeLYJGFwN/5lq45lv8/uzU5IRIY18Xra+jmIqeFNfcdEmvq0dSO59BHu
	 N5Jfqhm9f8+46RLkzthhIGiLRR6PIakEij8jGKFmedBSw883VdIxyMqr0nDHf5VE1a
	 3gbKE2iRXGz33SIcew8CFzgGa5jJqI8gFOpFIYpuR8xaRy9XyeqYXIuO/8JyUv6FAb
	 OSKKFjvYzXuMNkiual0zBHnSRwDYvp3sc6fTMyWGc4JUcF+prcATlO0G0BqIt5SnFB
	 a4ZGosFHld7bg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5BEADC433FE
	for <ddprobe@lists.linux.dev>; Sat, 15 Oct 2022 04:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166580765335.28912.14739831673392820938.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9254a750215747c7a09cd7c38585a18c58d920a4e186e7ae15cb39950536202d
Date: Sat, 15 Oct 2022 04:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665807653
