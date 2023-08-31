Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52F038F57
	for <ddprobe@lists.linux.dev>; Thu, 31 Aug 2023 20:34:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEF8DC433C7
	for <ddprobe@lists.linux.dev>; Thu, 31 Aug 2023 20:34:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693514048;
	bh=Kk+SGYU/bfTKafR8LV3Dc3JgVV9lYtFxBF/GRMqh1D8=;
	h=To:Subject:From:Date:From;
	b=KLMo/7ALA8KsdUGdTUZsX7Xyj5jNSrNvMltp/Rmp03Adv7ogiukqJQFuH1EwzksAe
	 tkCpU8HIka181mK6vKPciZ5TudALJ1/CW59b4n4/NbT7dZEai8YGMzR7L3LPTDbJMv
	 mLGpi/IqjQlarOYZX0q7brHyGT+pPGGTrsGYDb8xYu3HG3K8JVfAmFz7cfbq9o5qe/
	 8qAmCT4vFBCmYYniC+hJzEss4Z+fZ6si2fJqy1YsbDxcDm/Xa6fFbEfSC8F5z2EwJe
	 G/HxM+bq32i6yai/w5wP19DgiBZHfQKT+qcCvX4WXWCvayfQNWZZHXcgX9Dg+JKYdq
	 yI2J1SqhPoBPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADD48C83F37
	for <ddprobe@lists.linux.dev>; Thu, 31 Aug 2023 20:34:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169351404870.32406.13753570427783792511.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1ee4d87bc9ed8820d068e82efb39a6ce88976e4c5e4d68422c7e40d4f2557180
Date: Thu, 31 Aug 2023 20:34:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693514048
