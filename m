Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 935C563A5
	for <ddprobe@lists.linux.dev>; Tue,  6 Jun 2023 07:32:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E45D4C433EF
	for <ddprobe@lists.linux.dev>; Tue,  6 Jun 2023 07:32:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686036725;
	bh=+Dv5KzNXPitbzWnvGQjDENeWohAJdCYkA0vCt84y3/4=;
	h=To:Subject:From:Date:From;
	b=CSh6AVqndMPPuR21iaAGBnifh/+r28R1AhHaJh2CfUrKXas7teqaw/q3rPJWD1Fxl
	 bjW6SR0rkyHkdB9dBODy+DOwUqVAMmQ6XuRnN+YeyVU26JZOtw/wjCOGvR18tXauIQ
	 FREat6ahceSb4+WDcQwLz1qDGN4JHkC0iw6mWeqWLvQWzabs/phB0Mqy4izyve8vDW
	 xqsRz6TdfgdpjrUa+jK7XVq5wFYvR3J04ly9CvWeKYv6dLouAGbTbKhVetpsAZyhbc
	 rFpAUJuR6Gc5cLy6N7iVCfRNAIBqor2Vr7+rl0XUrn1qdnKtnS02+sixqP5SHJ1Qo8
	 xoWZ6SGF1Ndgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3598C77B73
	for <ddprobe@lists.linux.dev>; Tue,  6 Jun 2023 07:32:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168603672578.18216.18117799655452291217.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2cd721cb3d28df94bc75659ffc5fea0a6a60af7960627b1b58c219b67ca73ebe
Date: Tue, 06 Jun 2023 07:32:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686036725
