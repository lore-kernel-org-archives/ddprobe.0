Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14EC8199A0
	for <ddprobe@lists.linux.dev>; Tue, 31 Oct 2023 09:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fssFv7PZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8C4CDC433C7
	for <ddprobe@lists.linux.dev>; Tue, 31 Oct 2023 09:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698746296;
	bh=63S21atUqV3/LXHxI3N9kwjma1yLKqaIJJxweNmGjyA=;
	h=To:Subject:From:Date:From;
	b=fssFv7PZzUnNT1ujMLvGzEp9YrkQ5L9qK7X77FyQTzCoKxY4ww1fNc8Fm0g545zbW
	 STy2GSRWBY0aLlsrbSrCownCI0zkUB1rar+HXA6yRcnC9T5YFBjl3SgPjxdrGcRpwM
	 5oja7JDhpsNR+3nkTZPAQ7gy1aNOQDlHMSziWKADK/+xW5uwAZS/8RutIOYdhXho+M
	 UTWqHK+6fG203PICSPxNJI/4r//Pc4DWP5f8RtuvkX8QNhD3fPECSL4rEAEzfgptz0
	 amSlSAYzutf37wxFEkCcpbuhblEzVyFrPobsaPbdCv9rC/O2KxYwFx5WyGOnRFalET
	 6drfqQf51qX9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6D7E7C4332F
	for <ddprobe@lists.linux.dev>; Tue, 31 Oct 2023 09:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169874629642.3371.10546345352494735283.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b7ccfa1f38e200cdf4e3ec4f34ecdcdc8e77f31b1f0b303482841bcfcc6456c
Date: Tue, 31 Oct 2023 09:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1698746296
