Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7C7E0C123
	for <ddprobe@lists.linux.dev>; Fri,  7 Jul 2023 14:37:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 03317C433C8
	for <ddprobe@lists.linux.dev>; Fri,  7 Jul 2023 14:37:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688740629;
	bh=Lotm8KP4PUzXHAzRBqxKWDPqp8EdQrSV1dvIHCHKszk=;
	h=To:Subject:From:Date:From;
	b=l3Jpfyn5qJReY1XwPbE9YwyHiCz+uzKu0dEtqfsNDQzSLfLOe4UHQmgLFD5loaBAe
	 rEJjeGbT/V87EAgbR+SIYOUrUYnKWzThK/11cMLnQiGWFp4hY0E9srL115yKjFjech
	 ImJYU1EnV3MlqJB0UG5fj+QBAKtHiifUjF+fOdXbS+RZYmU+rBLxbvGJqAd9l7F8Jo
	 H/sbNFB9BWI0Jzlr6gTNb+57TKH+ZKgCTfAIJp0aHBsA2EB0jiAuwgZ4FSVJ221VGl
	 LXwZVTfLo/2TVqK/11J4GYmJwH3xkO4XcsZdfkuSpHUiDKrgRqs0JpYt0SzWY5PPBZ
	 7USz8aJCt5n2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D3994EB64D9
	for <ddprobe@lists.linux.dev>; Fri,  7 Jul 2023 14:37:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168874062882.10058.16894386950941041559.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6bde071be1ced768a215a457a2526379b43818e37dd8c87e443f476d79b480cd
Date: Fri, 07 Jul 2023 14:37:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688740628
