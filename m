Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA63F36A
	for <ddprobe@lists.linux.dev>; Sat, 15 Oct 2022 13:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6E54DC433D6
	for <ddprobe@lists.linux.dev>; Sat, 15 Oct 2022 13:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665839453;
	bh=Ml+a8ulGJQCE7kj2QJ1JxCNNy6VS1DOpUzobZt7Msjg=;
	h=To:Subject:From:Date:From;
	b=QraUGvdDG96dA9KYOqcdY39w1652alF7AvocLPT8vFp0zwFgEFaU9gOBkIJeXVvWL
	 1YnvPi87TCUtSvj8TP3VYeNL6kSl/Vv/+R0T8HpjT7d4nYjREqS2DjJzAogH87Tuzu
	 XMgpWyK4uZ33q99v4UiwH/buqs1y/jZ//I60CDqKIUO4ke9dR50y5TTB6CCpv0tZnu
	 TO9Jsd+4K/A0S0SrEoiJ03HsoD+l9LvfDfiP7oYUqoL2epsS1rGjlIszaALPkEB7jX
	 jhZXur46/AmOPsKogwMQH8VQsXjTEdatc+DwRV9klztm9bMxES72ESML+FzELUfPZy
	 F+fWJAQbS3M4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53D4AC433FE
	for <ddprobe@lists.linux.dev>; Sat, 15 Oct 2022 13:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166583945333.19513.2549529710196038013.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1fd6f991befff0f43a9675b84094274db63f4ac913b56f9627717efeff566be8
Date: Sat, 15 Oct 2022 13:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665839453
