Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B6F9F4C71
	for <ddprobe@lists.linux.dev>; Fri,  2 Dec 2022 16:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 69F9DC433C1
	for <ddprobe@lists.linux.dev>; Fri,  2 Dec 2022 16:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669997454;
	bh=KXySKutZltD/a/0hHnq0TTUL7rX/4oHcxrdxMR6BHe4=;
	h=To:Subject:From:Date:From;
	b=p5SSV3fR85jRPppofIiU40jglSGWYOGNkuPrZpIdTk896IBXSrDPDGrfyKNAtRv6i
	 LluivtgxH/jUjW+jmeR159iV8jZvGrJ2+k83ZPj1+rnf9ypqhKkXs122kFljr9MKjs
	 lxOOr/bhJeT37AxhDXlNSXHwQ/8QY3j0S+ELvAnDVlZ8xfFXD9e0hEJV7E4tzYlrB3
	 BUgraDdkKBsMKxm5dNxgkU01QuHi3KnJRAkJoiiZYobMPi3sdtNNj393S/kQWXD1xD
	 23w5tTcDs+AwNahZSLEijgIQ7ECi3lBKmRSmAumDCJC4qgBOFkIwfvVPKgz84B/vTX
	 pGz2NEmiTO54A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52A6DC4321E
	for <ddprobe@lists.linux.dev>; Fri,  2 Dec 2022 16:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166999745433.6818.12196601626358887164.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f193173e002af5710026971c4e57b8710ba3d330fb5738664709cb8a85612df4
Date: Fri, 02 Dec 2022 16:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669997454
