Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C93AC10E0
	for <ddprobe@lists.linux.dev>; Sat,  8 Oct 2022 05:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 73702C433C1
	for <ddprobe@lists.linux.dev>; Sat,  8 Oct 2022 05:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665208253;
	bh=2jz8ttf7yt25Y3RLUhO6oWBFLKnsTVvUoKqVuOrWCrs=;
	h=To:Subject:From:Date:From;
	b=dVYDv8tgcLVepjkfcR6/wpKh2NHmRFRCSaYAZrRgKncuVD0iExWOPsx3VFHqwCYFC
	 w6b4CFzg5utO6o5++/1/rl//3NifAb4lRy76LKLw9i9Qg4sQPRcUhGx4JS9ZwJ57JD
	 pRinie/cmYQ/76zW0d1I3QVLQ90VMquhWq+hRSqFixXC4qSJ4zCrG9ICUFu6RCjh6B
	 h4DGa5HvYhr9wmYDGtT9Nkb8PKPNVBl109je5sJPANLGDb0m3LZ2i/e0p1M/nNLH7x
	 hcOTLbQ0H/BPz2uW6kBWjQ6IOOtkYKtUvk7oeFe0IGO/I668xZpnN2BXk42hY2TW9O
	 YXNQwlQeg28KQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 58A2EC433FE
	for <ddprobe@lists.linux.dev>; Sat,  8 Oct 2022 05:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166520825335.3616.18279866382956023641.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bdfaf73fef3c061f62d800ec0cc47097e34a320e6e808680bb909da38753046f
Date: Sat, 08 Oct 2022 05:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665208253
