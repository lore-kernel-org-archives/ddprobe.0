Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21AC6222584
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 07:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766216634; cv=none; b=S7oHM9vnpO4vIe5BImTRX5n50vjIHJaaXkxVT85+gXLltuzdk9RUYEIVTA6qz5rTXFAUUTzd47HucYaEKZ/dgVavD1S/cx0hatuWeP4hl+/aGBx7e/DBMJV8Dls/V3QapNgGnNHjI/Erb3+CbuvEnijRiagDL8o2yrixmWAdcfM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766216634; c=relaxed/simple;
	bh=pW15zLYy+FuH7ggxHA2rxcThA2oLVNF5UL3R5PIss+o=;
	h=To:Subject:From:Message-Id:Date; b=MfdGx4ygIBbewmb7it7h4V2K5x41TT0f0ZDz6pvUZ1ArvG/hNFsRu7V1UqJS2zgTQEc1JAylALUB8DPRdeShVd1WGWYsyc13dWmZjLg+hir4P1iyt8iJ5c4wFnwgcBuVfTFDz82rjKYVuZJgMVIoJlLf4MV+P3MlNWGeOI2pH5Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E0WvIm7A; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E0WvIm7A"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A80B0C4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 07:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766216633;
	bh=pW15zLYy+FuH7ggxHA2rxcThA2oLVNF5UL3R5PIss+o=;
	h=To:Subject:From:Date:From;
	b=E0WvIm7AL3p4liUzTndexkMVzxTTC/u0fRKKsNhKZZv93raCuZnmyd9+Ug2pOgJpf
	 8My4j6WdNV0KS+MX0ZzTVy7wPpOs+JEIMk9ZGlkH5yecfJGO6q4J1syhnNYOvDtEez
	 HJjsB7OTcQvNbHO68CproWLA7Qnre+N4/cjZzI0cFT8jP3fIKtOdyW/hS+N7FFUxJ7
	 1HWWVjdT026ZAIdHbSO3WTnMZSx2eWoWG+u3enXTebnzZiAYXiurc/IUp5kwJzNjWS
	 3Bnf2NKjP1n6onskwWeasjALE794cZeBf0b3uMv/slKKAzcIYSMrJVMS8oQqMwIBQx
	 RdcnArkia7PMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9622EE6689E
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 07:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176621663358.10195.3731912890201914238.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a1f1dc012bdeaeec98edcbead43827377f4da9e8dccbfc29e059aa42b51acdbb
Date: Sat, 20 Dec 2025 07:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766216633
