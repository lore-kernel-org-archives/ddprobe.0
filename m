Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B3F2A7B
	for <ddprobe@lists.linux.dev>; Thu, 27 Oct 2022 04:30:55 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6F442C433D6
	for <ddprobe@lists.linux.dev>; Thu, 27 Oct 2022 04:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666845055;
	bh=FCuEfRBjkeZaMcnK4+PwYh7JBbK1T7po1VZ7Jc59X2I=;
	h=To:Subject:From:Date:From;
	b=Ktuhla0V1EJ8b+JtbfU8F32Q/TzXg8gipV2E0OUJ5T+R7FtW2zN4XtDnaKZg5w1bf
	 pgvADnBhqGhdRg/farfhiPE3zGL71JJqb/mAAUb08qAjzQsVYodkBhzrhzbcx2RhLM
	 qpHCvjm5WGtlugS0unsjXkIAm/+GCmHix1Atf7AmTiQvPcUhbSc9PN2S5s+9FGnjCk
	 bKoirZ51abR3steGDNz42wxmVj4Z+K5Jl3pShWOXfZdQ6WNJ2HzuNL6SZmRLsrWvFx
	 hsNSXUBaW3Zo+28Alya58C//ySHYw5d+fO40o/7uYJKedYqEVjr0jWEc55QgAwj/18
	 QxQBBpRwYZiHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54DF8C38A2D
	for <ddprobe@lists.linux.dev>; Thu, 27 Oct 2022 04:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166684505432.22166.2821713776806096961.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ddc1e66a77282a8242e3b228972d74a9f8929ced1462801823bea81f52f9e1a4
Date: Thu, 27 Oct 2022 04:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666845054
