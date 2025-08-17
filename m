Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F86E10A1E
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 05:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755409196; cv=none; b=FzQr98YqqjsMFZ4GUz5YjvJ64KZlXN9qm7edJIAglBxWMp3bOReGuTJvI8t5IahxktsaENqs1bkvjHsjPzt/k54dxSckOSFfCtYZrKlx4eMKG8i3s2lJmQUh1nPVXP0sb/6RgmkYtdHGvPNMj3ae93RisdJEVUMjU0XV9Mb/NGc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755409196; c=relaxed/simple;
	bh=DVXZ5nrB6OtNvf5R6j6FOFzLMnA2K+OhbJ3CuHvjwaE=;
	h=To:Subject:From:Message-Id:Date; b=hQaFVj/H9oQ6aGTZw/IoEa+lr4+8DtgekB/M1QCnKYEfPjd31UJPn/CpRUvL1f6m0fVx8CU/hx+vateyRL9FgWY6lAcH9wzI+wvTg7iyyezEAtHFpGodAOTdSASRQ3MGyfgujS43Dg0wygz/etGAlyP6DpjlM/ttWVlBPi7fktA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oFMzIXPj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oFMzIXPj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A16BAC4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 05:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755409193;
	bh=DVXZ5nrB6OtNvf5R6j6FOFzLMnA2K+OhbJ3CuHvjwaE=;
	h=To:Subject:From:Date:From;
	b=oFMzIXPjY2ym1itDkBzwZeEARv7bLPmLXf10RXQ3rzvSaritL4D+oJai5XOD0AVxO
	 oWiUX+tlrqnYCgFcmybdO7Fsoj20GKm53LgsVi1N2zxCP0fG4pcMccFld/sPmjueqn
	 AERC4xLecmQBROP6627Cm8czuTsh0hAXmiVP1Zz/OYCUqRGTSFrVa+aN0nWFgk+faA
	 3TaPV+V5wDXVjevCFVxwV7k32w5SGBcbeP4AnbH2FNj+UtYIGKmXUFSYLff4Z3GR6T
	 qdFAxWlpgNQX+Oupw7w+gwHI/0LVda6aVZ+PQzTl7COoXUUA23ARsOkgvqLTJWo5Or
	 QxGgCNVLQaurw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F110CA0EE4
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 05:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175540919357.17283.16911819466035227299.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 238169a5ff0198836d508fe11fb9088be992f1a002260bc1708f2a43dc86b987
Date: Sun, 17 Aug 2025 05:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755409193
