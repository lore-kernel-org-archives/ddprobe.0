Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E2941FB8
	for <ddprobe@lists.linux.dev>; Tue, 21 Mar 2023 07:28:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DCD0BC433EF
	for <ddprobe@lists.linux.dev>; Tue, 21 Mar 2023 07:28:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679383685;
	bh=AE/AXgygqk9A05YQ2Ari694RFR4zSzyvoeBMmhT/PmQ=;
	h=To:Subject:From:Date:From;
	b=eQ4XTmfym7H7vbO1lJygBBAB+Pc12e3yJOoiYYSMypV2PcAbaiZps7WteVd9h9lb2
	 KsJtPW5d9Hyvy3fRHS4PrW3bwvULAl7IsjyjeCMzcjRYNR0cLINT+RHs5OKv+P9aj7
	 qZ0BNJFQ6Jc/ynh0R2/VhJR1xUlJXXQ0T6qZz+3M6h5jkw/G69kX6ZSTJp9qzZ2jsA
	 aKgJ0QzBzIh3Y3I2clQhd/O5Y2Zhd1i7sl2O1ghNp3HhJB5J/1t9ijA/upQROgm0sC
	 GduV8Se3ebodxHYoa4fdcKlYKMsTdOMakSFwC/u/y0qKnjqRQcD+AJBy9gEZ1FEP0i
	 a7BQ2ejRSrtvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BDF14C6FD1D
	for <ddprobe@lists.linux.dev>; Tue, 21 Mar 2023 07:28:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167938368576.1208.12895251558976962093.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4eb2a3e69b753b2e5fe6163e4aeaaea0652748689ed5bf3d59f4e1564c26e0c5
Date: Tue, 21 Mar 2023 07:28:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679383685
