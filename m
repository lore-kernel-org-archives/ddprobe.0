Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B232185F
	for <ddprobe@lists.linux.dev>; Fri,  5 May 2023 07:47:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E3B20C433D2
	for <ddprobe@lists.linux.dev>; Fri,  5 May 2023 07:47:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683272825;
	bh=6R1ETfnlCUOndUN1mQCUAnV84ae2g75NBjH5wIfq3/Q=;
	h=To:Subject:From:Date:From;
	b=CUY2ztCHKCP5JP/bIn2Y3NnW8NltfV51dgJriG6F76rGG2ceZPVEK9k7UVaXlNWOh
	 p+gRqkMVEYB7eQ+9DfmjGHTxr53UfcOiWQYilNCXqEUk86OlJq/tV4opZ5Q0Dmy3am
	 0MbP1EnGpszWoa2MeE1+dczAGXzJa3OyNdb0HvcTDRM8gD30ed8wkSMdWd9zoZAonV
	 7L2WGJGpfOhfxU4oeAW+nQH0wbj0SKwgtlgvKusekGxDBnTOKCIxW2VP+KgS+9A8rk
	 ajsfDLsZn3jJ69phrx8b49tYNU/5kl017uZVeJ4GTbbTM8aWMJW+vTqanZwYAAhYJN
	 3b9qTLzA6QOBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE427C77B7D
	for <ddprobe@lists.linux.dev>; Fri,  5 May 2023 07:47:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168327282577.21955.10356909505614052387.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cf27ac2897496e1da78eb0dc9d52185f27af6a5296be6346fb82c5d0c03c5bed
Date: Fri, 05 May 2023 07:47:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683272825
