Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5CDD4142911
	for <ddprobe@lists.linux.dev>; Sun, 14 Jul 2024 20:50:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720990223; cv=none; b=UV9e8ny12HsYrHCkqRFrabB4bx9JA5Gwkf9BcXlj/C11+3Ad6gVmDmbSbp6Uqa3Ptj0oPrkWLcE0fyaeoj7TDgHV5+TJKB+k68HqhmMceCHSNYv2o+enoKHWUtvef/Pn9JQQ++mDLCDLGZ4SqwxbY/pJZGEQqhZ9aBfTBgE8PHA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720990223; c=relaxed/simple;
	bh=qNSoJ0bWYlMq3Qa3tZvuGjmF6q8JnvN9WgPsXzvfQ5A=;
	h=To:Subject:From:Message-Id:Date; b=uAiFKH+w0EgmkibmGGp0ceVwXZnJ+mg/97hnrzLYDb9i1DW8XC4XB3thTF79p6g5q9u8ULDqZVN8DLBrj9PKWiXFD77LqCb1PH78m6DOilGdBNjZ9Uw6cMTmRnCP8j/YXdmJ2sgDmU1IevJv9JLl0/UzZjVll4DLRC0HyAjWedQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TNQwlXF1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TNQwlXF1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E4815C116B1
	for <ddprobe@lists.linux.dev>; Sun, 14 Jul 2024 20:50:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720990222;
	bh=qNSoJ0bWYlMq3Qa3tZvuGjmF6q8JnvN9WgPsXzvfQ5A=;
	h=To:Subject:From:Date:From;
	b=TNQwlXF1gh2VyLmKBkjF3B4qyhtLjNeLEVfGCJz7+2XvhgGMHaUyA5hP93ZePB049
	 hytzx1x15RNpm5rEAZvNn7Md1AfP/ddg9U9mZzGAjIJdpWwk66ClBP9BH5Wv2Hrkp9
	 4dDFQn4v0JkxrF2tkBrUTenr4mE7ionM5COeZSGBIPhioll3hqtKsi4hqk0q+WACj8
	 l93Zf9Iwol6ZlrqsF0hcFHlvc79XaOdVa3TL1nuNurGH+bmAWL6j15r4CI55zZaVBu
	 JQdJd1dC2/3XYpR528kTr3s0742LDWSlYBmkgbT4ZH4G9/zZMBAZAfk8yOyqBeSiU3
	 ftx3+KkuFihvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CE800C3DA42
	for <ddprobe@lists.linux.dev>; Sun, 14 Jul 2024 20:50:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172099022283.19462.5516311588549766874.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ceabffb56a83654c191a3023ae411d39203a428c692142a236cfa8119f0f8a72
Date: Sun, 14 Jul 2024 20:50:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720990222
