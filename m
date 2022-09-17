Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AEFED1378
	for <ddprobe@lists.linux.dev>; Sat, 17 Sep 2022 11:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 68888C433C1
	for <ddprobe@lists.linux.dev>; Sat, 17 Sep 2022 11:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663414253;
	bh=9+GFCiGMGFCESX39tnbyU/eU80JhSEOggo4QRAkklHE=;
	h=To:Subject:From:Date:From;
	b=uk88FHIR0t7Si9WUyybrRG4zJfHsKPfWAIpjHJzoKm5JzkXqW9TMsQU9/8q3nVRT1
	 nGsz5iwYtq395UpXbk1TrrEFZUL+PC770Zv+PcbtbRfJD4XMjKxhFog941dj2czQD6
	 +cZEIAsSc6qbidsfD9qPlxxKiw0q1NF3ho+RYT12+GsKjLLf8bvE8lVJn58E7PZZy/
	 RJUpWdTgyuoCFIPA1mo/sUIuhlhwMu+VxxF26U1fKwXEerrNjqFw8rRdHFVIZcUpk/
	 0UpOqk7a0vLFyW6eIqBSjr9YLt18VOoGzw6o6lKLNmRbPzW4WWVOBy5iUsSd6ZeY90
	 RWwXI5REeY5fg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4F7E5C54EE9
	for <ddprobe@lists.linux.dev>; Sat, 17 Sep 2022 11:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166341425331.4191.450639938755589610.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5a20e1098f73d7e48a4e1940b90cc6f7a93ac47c519ab12e4a1c0236352aa44d
Date: Sat, 17 Sep 2022 11:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663414253
