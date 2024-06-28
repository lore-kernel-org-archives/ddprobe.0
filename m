Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 01AEC1C9ECC
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 16:54:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719593663; cv=none; b=cckAnIeMeeu/9feJeVf52GAg9+f+I1v5Y0ycc7G4HgcpddgH0paZsIh0ZrsZmjrYxRfdEm7DyH4cPEqzPApE0rAnhOmEy+aHZkPGlKc1EpJN5hBFhC+UQWsowCk36/A5HQ5tfPUfGPZicKJ+WXzHK2n8Hlhu9GGQAv0Jyh4hgAE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719593663; c=relaxed/simple;
	bh=inb6uKUPdoOkIYkkvVGItzXWxbXDixM/ru5Z1o/DPyo=;
	h=To:Subject:From:Message-Id:Date; b=XBWDYLxREa4v63iSr4lzunjIXEAnHI1LbvV7OMCPn4w/WjEmF8bB7+HeIkyWFvZ2AbmWXf32k5XhgPHpZWelcykoeDE4fLH+vn7VQtXqXGVnFOLtqeh5f33ePTVGTO6scWjAtl2hOjKjc03LiffAjIxTkwX8Czq3/Aa3w25RHEw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LnledHRU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LnledHRU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D58B3C116B1
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 16:54:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719593662;
	bh=inb6uKUPdoOkIYkkvVGItzXWxbXDixM/ru5Z1o/DPyo=;
	h=To:Subject:From:Date:From;
	b=LnledHRU4eBg7J7Djpv9Naf3Y57EniYpnW2eey8ndAEdyI9yjnNSBzdw8CYgpWpkf
	 REFRjVacRr6IizUzJI/I22HjS7ceqOCls5aYwTtpBa+HIqoL3a6L9EpMEbi0WMB1YW
	 iZVLxeCUaY9ir+2pcDT0uiinQBfKTi14kBaOKIIom6rySV/Eyo/tIqe42/xPGAc7A8
	 y7grsQVOXPHQYK09S7Zsg33/HDU5f1RMe5f6LfWKhJxbiiMzSCWivn/gJ4eiXR1Z3h
	 9EecM1lKBNntaZwnGFxRVJjmF8S1+QqrfjQQh+nZVXGcPXXokRZr655+UJHjjzX+o6
	 aDSPgiLfxkb+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BBCCAC2BD09
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 16:54:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171959366276.8571.13605001748526765131.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 720face8f5a151d21bd9298100e0589d7fb59f4da5ed65387fd41da9fa71ef99
Date: Fri, 28 Jun 2024 16:54:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719593662
