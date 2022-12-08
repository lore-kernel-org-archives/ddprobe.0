Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C28B9A21
	for <ddprobe@lists.linux.dev>; Thu,  8 Dec 2022 11:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6AE59C433D6
	for <ddprobe@lists.linux.dev>; Thu,  8 Dec 2022 11:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670499654;
	bh=AysKMUccGmEH4T9Rcz88XzSpkhfVOCXgXp6L4tO9cjw=;
	h=To:Subject:From:Date:From;
	b=cgZdoZrv1ag8XxOlbqfo5D59LKuiSxjXN2nt+sGu54k806zuGoMf4Ql4PCbL0Mu1l
	 I1xBmC0prTEYNEQK0NrpzPu1leks0Ks4UWAn/GbX8Cyzk++jBeQ370EB/hoIjtVdKh
	 73ycFhljANWo56X1NAgp4ZAw3qs4DV8Q5zN7MplBbG/gs1RiEo5SogUMF2P17lR4DC
	 88I+oCzSWkq9ifuAtPXu0oK7gc926/6qGZvyF1K531x2+qYAq3w3o9yQEeKMroECkw
	 8ixNpSKNSkBY0emUkcJVL/pCTcpcYPOSYRVuk4ZlQHXh/qiU38R3OU0Fee2tbgGwbT
	 g3j1kUSVrsyuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 50A4CC3A5A7
	for <ddprobe@lists.linux.dev>; Thu,  8 Dec 2022 11:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167049965432.1403.7797264441407125227.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9dce35b896129dd2aa0a5bbad2b6a34835fbc99ee75ae81357dc64bbb7b68e0d
Date: Thu, 08 Dec 2022 11:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670499654
