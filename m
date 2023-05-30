Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35F5534CFE
	for <ddprobe@lists.linux.dev>; Tue, 30 May 2023 23:53:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E3E40C433D2
	for <ddprobe@lists.linux.dev>; Tue, 30 May 2023 23:53:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685490785;
	bh=GLReu//HV2bpBdrWQUmuWp6d8TD9Iifs7OgOEftPxAg=;
	h=To:Subject:From:Date:From;
	b=l/yuDJosXbLsqMbef7y3EQhDDnhitHqQX82ZMBdsCgL0hjbS3+grq0YTQ7Cq7Gj8P
	 dRk2/1AbAOeNMnNYcifGNWPFSzSsT6WTvAsTyz7E0ewrakcW/UqvmmmB/fw18XxgWW
	 vyH+BsIX4gvNalDnZiZYXdUUFWQ3LVH8mPF7s+sSg5lBMVioNxORBjBklrnmZ4UCs8
	 Z/mUHy4d0NerQ+rGaSKWkaPoHvADb5ZQjSE4SXtsnfdIN62hQ/ZnSh7wcI7U6Ya0Yw
	 4QDme7wueuPxTjpuGelvCIA215+1WXa8nTUCJe8Gb//6XLbVM0L7/vAy6foxlg+tvS
	 Uz5g7ZvCvOv7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C576BC77B7A
	for <ddprobe@lists.linux.dev>; Tue, 30 May 2023 23:53:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168549078580.32298.15807845192031288633.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 52979fe385f30c591719a35d3a2424a3b84c7c0984b0899d9068a3864d53779e
Date: Tue, 30 May 2023 23:53:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1685490785
