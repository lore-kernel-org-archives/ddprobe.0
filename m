Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BCCF428E8
	for <ddprobe@lists.linux.dev>; Fri, 28 Oct 2022 15:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6F5D8C433D7
	for <ddprobe@lists.linux.dev>; Fri, 28 Oct 2022 15:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666969854;
	bh=ex9dQRNBeuaf9E4A5YzbhIM3918BvwuY+5gPeEy2XII=;
	h=To:Subject:From:Date:From;
	b=F67bA+S/PkcpgnK5/+u+RfhSDXK3jkkSHhMMZ3akvcc0nauzjBz924A78DoSeAjtG
	 d19BK+88mM2PAUF405gOa9xGSERD2YGUVxvFh8BUoRrefZj2oVJzXg4TUNy5hFw3OP
	 DxWTmKLZ1c9jBrAmp/dRhVyvUP/XNCTHN/zo3G72elVYJhLFJuzJzC8I44nO9M2uQT
	 fHbox1RPA1/+8Fh38HpzaaJ5uuGQOkpvSYaTM+YyYDT5JfaWvc4Dj/NHaXaovirQUa
	 MdrIVuepibIJgBOu68w/f6p3NKqPVt64HTHqAM/k6M2fckP1m+DYcG/kn26ecU3CyV
	 Cjc4JwKJtS7YA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56C5BECAAA1
	for <ddprobe@lists.linux.dev>; Fri, 28 Oct 2022 15:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166696985434.28615.17629185567120115127.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a41bc9accf75a376845d2034e0ebfe878315d43123197d540937fea8a3ff5598
Date: Fri, 28 Oct 2022 15:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666969854
