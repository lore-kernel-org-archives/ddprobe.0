Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 539141922DE
	for <ddprobe@lists.linux.dev>; Fri, 14 Mar 2025 22:48:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741992536; cv=none; b=XVN8KiG/ek+HUZ1j9lhX/1NF9llAXJPGRhmjquYZEZgUKc0lKOPabephUUw58O/7V1GnnmmX+epneA9nY0MwZZ6APHZ098cohyR0AncwQKh68I5dAj3lWoTH028uXzxAQ+3/lYs7bYsGNBEgwNkxhmvCRD3ae4XKogSR+2Fj0AI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741992536; c=relaxed/simple;
	bh=ko7Bh9aB5p2rBkBT3rCEn8rRAoU5yvbq+/rnCVKRfEY=;
	h=To:Subject:From:Message-Id:Date; b=SEUd/sQ4G+wBjI6WM7uU75v48ups+szvld3RC4eHQwcfcDAhR0z2v0r4q9MjYNz/CZz7EXuduSmLZbgOy+ZtFvTdlOXVaiZxFfjohlwtRU6CO/ssYaXxFcbOPwZ6cmDkRwndTGQngNc0aTjmg6YqP37ATdxyq/195ptOPYjpbNc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g94F5+vq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g94F5+vq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACED4C4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 14 Mar 2025 22:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741992533;
	bh=ko7Bh9aB5p2rBkBT3rCEn8rRAoU5yvbq+/rnCVKRfEY=;
	h=To:Subject:From:Date:From;
	b=g94F5+vqo9+rnBlWv9rQ68rYXaJvp5dKADwjn3YG7Y+2IWSqJzJHLn/S6rzI43A88
	 Sz1+Bspz6neUU9aG5sdWqQ4INLMnE7/fCVIIzS2rYo/wiqIMCVy/u7APRhkaoaqfF5
	 kb852JZr3HT3D2Lp9GtvJC3mYindirZEZTJJfNRvN61Zlsuwa+olz4+iWgMhyMHqc3
	 W0sDmV0qlVGNlvKOh7O/nfPOxVykWgTdTYM6JIpru7nW62tskdAuyNDGnrTqSfUhWP
	 PR/YXlw6zdnwxZta/c57c49dETswt8wZ3zYGoG2SrBRkHderZ3dussS43a4a91lfXO
	 gTdpI5W+GWEmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 979E3C282EC
	for <ddprobe@lists.linux.dev>; Fri, 14 Mar 2025 22:48:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174199253359.22742.10838511166180378451.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce9b24046f8acf67861c50611ea60593fde3b1cd96a3473c7a78bae21622a6e3
Date: Fri, 14 Mar 2025 22:48:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741992533
