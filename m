Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF6B64416
	for <ddprobe@lists.linux.dev>; Thu, 13 Oct 2022 19:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6F46CC433C1
	for <ddprobe@lists.linux.dev>; Thu, 13 Oct 2022 19:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665687653;
	bh=Ssj4Fpxwrr8VeqUyfMFvwPfG0wV6oQVc1tJwHHeUZiA=;
	h=To:Subject:From:Date:From;
	b=FHYV5EVk4TOE+U5aIk0qBFboW7Iq02lWCqYWp+NNasfYFD0js0A9cFK5VLMyoiCTm
	 G5jTH6X0bXySiFdKSMwfIwS9LQrtDoibvNutVWMY4PKodWiTVq9A6OhZKSA3SHouWR
	 rSvpM/FcD+weFxylmqFPiGkrezP+w6j/WkmwMQCSKG8A9dd19crESPQYOl0vbt/e9Z
	 7Mmk4tUoHq/sKkXh/VQBAaHPOv7o6nHbg1aB9g4exmBL3P2W8yV4WlUTmkceAN1WcC
	 6RzRAgo3wBkxby3xQUI20HzHG+cTbBP5ZL/YRfhlhTJHmJfyCPZ6qiRGt1YYjMon3w
	 kH+PdWZYVUZ5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5592DC433FE
	for <ddprobe@lists.linux.dev>; Thu, 13 Oct 2022 19:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166568765334.32166.3687194310464741968.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 63ba1421d54948c1f689ca9e6a3793cdd16aef74c0c1feed25c1e23e6a68cfe6
Date: Thu, 13 Oct 2022 19:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665687653
