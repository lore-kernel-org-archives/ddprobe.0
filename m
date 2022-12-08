Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B721C657
	for <ddprobe@lists.linux.dev>; Thu,  8 Dec 2022 07:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6F624C433D6
	for <ddprobe@lists.linux.dev>; Thu,  8 Dec 2022 07:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670484054;
	bh=lKDgmNYrk0gC8IzvbFqXijBmIxcF/k9L96haJMwE0iQ=;
	h=To:Subject:From:Date:From;
	b=j4a1yMgfXjz1yd2CXKAwDdAsKLbi/aI9bjFomzWO7CntLl599UbSC1ein7T1//Ivh
	 1bRNdwA0KRCAL5Mc84MQv7PUy7VHTrCyE21LXyAvRY/AJ7e07JwtiYheT27dQTANQ0
	 9O6aOHH4QYIPkPTdSkCAZkvEit1+0LXQX9VEe3Hg0F6jbKHu3CViMSZxnBywtB/aoY
	 7/MWUqBgPLcMb7Q23pV9AInB/eJwsj6oGEqSsb3V8ohpRrnHKPX6TQD4Rawzqp1DfT
	 YdMLpkGO09e+HiylV7DWZtthkkpDMLpEVF4JGdk7ByGtvzYzeFJkta85CRvxA6GK5O
	 jW71yKWgRIy4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 58C8CC4332F
	for <ddprobe@lists.linux.dev>; Thu,  8 Dec 2022 07:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167048405435.771.11798645273337478451.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3cc493ec991074d36b2f8b97a1e3d9a5a04ea41becbbd830885b3ef2260d712b
Date: Thu, 08 Dec 2022 07:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670484054
