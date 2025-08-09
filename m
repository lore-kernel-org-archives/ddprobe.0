Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3026515665C
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 21:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754776194; cv=none; b=FB/VG8ZMXZzva4kw3IzKEtAGoZi/SorV7F4qjR3+b3Kc0nM7W8bpXRy/nveeGKR+Ls+4a+688fscFkKR0MarU0BDJcuJj7X4xGMM82xzbVuCt8TjKglw9o82wdCYXMXLJ5wJ8sS6cp3gA6eBqT4FfQerQ219kzcb8WDh/0wmXRc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754776194; c=relaxed/simple;
	bh=h7+pIYzDfFa+Nsf85WcKkSY86BTZr4R5j8VZs2DwC0A=;
	h=To:Subject:From:Message-Id:Date; b=eJdv+Si/XZ4ouwFLq8USghzyo0vPaPpPuVAYSayIzsKeD36+HPhENcTh5gcXjAccQtafMjHSx1em/Esgqih140/xcunAoLckRdmRkXSxN2bKbUkONOjZAnU+UFtNR1TkF1qohzjURKK+vOLTl4XHE6KcdOvCu4F4Mfv/Vbt7tIw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qlkIi4wE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qlkIi4wE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1B04C4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 21:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754776193;
	bh=h7+pIYzDfFa+Nsf85WcKkSY86BTZr4R5j8VZs2DwC0A=;
	h=To:Subject:From:Date:From;
	b=qlkIi4wEvSLDqmz9RJg++NzaOFKo1lmWmi2nebJh0hxME/0Aj0H4MLhgPFKpEH+/k
	 ODtvpDdgZa9dsubFQqnCcPcP2jC8doDPZdD0bzfbbIHOOmjFuY8fFfhfVEh9if7J5I
	 Qp9WfbsQq2mmoHk2qheQUgkeYpKW5sEQe9HU/mwB8vd4cJkJb1TRWkMCCKiifNx/l/
	 w2/MVbY55XYkATpOYBLMZ69R97UrRkY01RDYv3qo+G6Bpks/VEBofuhQf1vcx9ZQFF
	 M6tdluAQknjnF8iTNP5gXPSRWhILRD5R1QOPla/vfVjrnzyGD3jixHwWF3QzrgRA6V
	 Kn8Zc9h7/hrJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E736C87FCF
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 21:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175477619357.19664.13926056097432580374.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c2dea8637c0714cb36f117c974f150705caedefdb81111d235046093e916798f
Date: Sat, 09 Aug 2025 21:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754776193
