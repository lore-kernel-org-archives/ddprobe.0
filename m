Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4165A38E8AD
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 12:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786798234; cv=none; b=MAJj4gpPisJsjmo6nMqH/2z5cshyr2OvGmwSHmTLJEHSvzQxn47XV359ksKwJ2buweB+FvJbTJ9AqI44Ftm3HqgtB3Oq4biNNbH+jQSkXGUCrZPHAeAxlPtYc9fGHzOSHYvFLXZpPwgPA3sWx7BWlMnb0Djh8qBBJa8bJqxlEL8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786798234; c=relaxed/simple;
	bh=Zmg4coHF+dEgDSwU4koJwijNiLvqgwF4GqXeQuuOoB4=;
	h=To:Subject:From:Message-Id:Date; b=sddQrrsQD3yA6yp30xV82a8RgDnnabhGQ6X7M6SKEZQipCcNZ5u4RPg+x+L4YzNTXbJMqI5yFO02MqI7RUIibZxcT8++vsCkdWY7iM9Hw/Vxo+IBjHimDB41XseF31uJgBE1Rtj5J0nEhm2JEj6fHBi3AVodGkzCBUfR1wpajxE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Nf+ljykd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Nf+ljykd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D73A8C19425
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 12:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786798233;
	bh=Zmg4coHF+dEgDSwU4koJwijNiLvqgwF4GqXeQuuOoB4=;
	h=To:Subject:From:Date:From;
	b=Nf+ljykdbr3VvdWQhb4ppg/lNic8nWAjo6C4Arrf/POtwBCjUjtSBaWO7+Ej63Nw5
	 qmtyR9L0vu9dJK/k2dxaxCIooq/0qm9LeCUgf8yI8eYmtTYRKozMZlQIHBixfH2+vt
	 /KZD86n51dM4sSHib3/eOLuKCRz+30hv2AjwMDCHfQQU87drOWZpdv/xkRW4VfItrJ
	 KpZ5ll/ldKp6HXe6TT4Fr0DIYE95DKOGWmamelmGEfbE0iAeDsHf7Vnhc+eFmyuKlf
	 Uimi/Rs9P4MJrSPli8DYTjkWB86RTVGngEo8MJxLYustN3/+6Wd6ygAAYh4p/Kdt5l
	 yN080ZWNoEaRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B246AC5AD5A
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 12:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178679823369.29384.6831064964068883644.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 696ebe7b72622ac9768fcb01630620d53015e0139f32da6a1d79459a9d849325
Date: Sat, 15 Aug 2026 12:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786798233
