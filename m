Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B843710F3
	for <ddprobe@lists.linux.dev>; Sat,  8 Oct 2022 07:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6B6E6C433C1
	for <ddprobe@lists.linux.dev>; Sat,  8 Oct 2022 07:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665213653;
	bh=AzneII6CKaDtkvG0dPAj3SPXLb+vBNtPrpSRpAEB75E=;
	h=To:Subject:From:Date:From;
	b=hUQqQSU8NheR2Vf+qa0zOuckVQXc+zcs4daKZP1Tpd6yW+gyWSIsv5BWap4MBTL6s
	 GuKdcdYjsEkQIIFQOkdRczBsQq67qwSxaFmHMzaVGXQz0GPF5wgk3/yUuBJQkCkpNr
	 rFP5A7vokUiEC7WepKy0kZD8dKrFu300y0qLwkJhAey4IVxlba+pqDTAQnaBQT+/we
	 MOpY9qG0nYVqzOUkq/8/Is+/G6xHS4zhLoG/+/0LhGTJ+GO2pNykiXI+YlF4Xbxh3f
	 4frwBMK+RE7i0acxlvQC/vk12LH5BCkiTvO0EjWoMGVClGDoBvlTuk9Tt4hBRpsE1J
	 CH6961KdunOiw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51259C433F5
	for <ddprobe@lists.linux.dev>; Sat,  8 Oct 2022 07:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166521365332.14291.11876179529204567553.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa81b7f0c8d2f89804e5ab8912c3a73d8dac03bf4013805097bd49e06f4ea3a3
Date: Sat, 08 Oct 2022 07:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665213653
