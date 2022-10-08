Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BFD5BA20
	for <ddprobe@lists.linux.dev>; Sat,  8 Oct 2022 00:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6F0D4C433D6
	for <ddprobe@lists.linux.dev>; Sat,  8 Oct 2022 00:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665187853;
	bh=a4Xh27sWxx0klY58wpvgOq3g4nW/n/e7G+g14CikJyQ=;
	h=To:Subject:From:Date:From;
	b=p8RuHGPfiBgANg1qp75aKTCjA/Eh9ZeK/NJkLM/AZ2TJTuhTgsQTbRbIiQTRs1pur
	 GWpKKvsVYmL+QRVgKYg4Jjk0nCwDiU+t/FguM3KBXNywpVa8LaGXL+2dlYp9N8Es0x
	 7Bf7UXqvh/TUYTHQrxtyDMMMIOkhqt3TVSdPn0I4W9uztr0J6k9MNcUA32Sj+K4qrx
	 LmKar/t2qoAZ9MbJuWiEjR9kiGs8zVtH2yjY9UxVq1xS1h8gWWkppRk9gs3BLxLtxy
	 EhQ8snOvk7UAsw+VKHWSkLibOLeQ8W3uzYVn6koeOMBFsBY3egukSkXw5fRC+1BMj7
	 enDz4I858IiGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54D48C433F5
	for <ddprobe@lists.linux.dev>; Sat,  8 Oct 2022 00:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166518785333.24924.1734931706592511747.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9729602cd17095fb56e688cbef6c74632e612243986127e9e180b1c4658d380b
Date: Sat, 08 Oct 2022 00:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665187853
