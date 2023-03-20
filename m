Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C8374C7D
	for <ddprobe@lists.linux.dev>; Mon, 20 Mar 2023 19:17:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EAE6EC433D2
	for <ddprobe@lists.linux.dev>; Mon, 20 Mar 2023 19:17:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679339826;
	bh=Z1lCViR4zbfYH5OL+eLCKGimYrGJ4GO0dg07PVrjG0w=;
	h=To:Subject:From:Date:From;
	b=RfZ2icWhUdKB0NO4cHwRW++QvKgejTIBwVnbRrVzXQ6K+I3i8WYwVmPunqTmPZ+jp
	 3HQKgnwicQy/qfng6TE+KBCSFoBAgSTtnUmTf7HNSlF6huRH+eglyBtKweoKYrmzI7
	 vcHvt2EK2OQS8ahWGOSNnEYnhl3KRugodNHN+1OcPAqSO3987JDUESvQKNvNW+T78q
	 E/nEnlpfwZaQOvcv2KhEs4A84qySk55XqOGz9gYYmkXqQv8V9WnWq0lYUCb6GntKDS
	 awcOAQffdDrSyGksCIF2fU4l7Ovhy0Lcmsm9s/fOHKodQLKG7k103GNYQWZrAB4zUK
	 EBrzxxpibCHGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1A11C6FD1D
	for <ddprobe@lists.linux.dev>; Mon, 20 Mar 2023 19:17:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167933982577.25249.2423892949992037045.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: def7481de2eeec68a831e0fc6a5bd3803527fc4eb260f7707ed536bdfb63c79d
Date: Mon, 20 Mar 2023 19:17:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679339825
