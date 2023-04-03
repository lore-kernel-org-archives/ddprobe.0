Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2342E6FDF
	for <ddprobe@lists.linux.dev>; Mon,  3 Apr 2023 17:26:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D09D4C433D2
	for <ddprobe@lists.linux.dev>; Mon,  3 Apr 2023 17:26:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680542765;
	bh=ISeL4e+SB14Jdcw4wfI7n3y2/J1fntr/J095VGj/o7Q=;
	h=To:Subject:From:Date:From;
	b=epOG7VgRnH2dpgZyug6xXdw7po8BfROanzT5pkounVzuTQW2uLSA6KDMnKlp4UO1l
	 PaEXSxjDXgecIjy4e7v2TO23QtXnD3k/jnPIaeeipq3eLrVUbsFnPDxydzJ0IgHyE5
	 afES/yr4/rCuoWOy5Q7+xXd9WHbnFczbbD56Cb9UcTnx+qWmKUiRUWj0tjNAF0Nta9
	 8aKE2ojTDr2ORHrsIZIiTro1odCNKap7af37eltHN5VsN74sqVjlUSg4aqXn9g8Uwr
	 KnEhIs6PKNZpbOed1hcjgT6KRqt7unqB+g+PGd4tYZhOcCORirqtfcTRE6WyukDX5S
	 sGfpFa/BCgNUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B71E3C76196
	for <ddprobe@lists.linux.dev>; Mon,  3 Apr 2023 17:26:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168054276574.4907.12759344787005458647.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3c287b66d412189b12233505420027dce0162090d84851f65541636eef98a954
Date: Mon, 03 Apr 2023 17:26:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680542765
