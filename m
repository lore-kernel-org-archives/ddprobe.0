Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 718CB56444
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 22:04:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719612263; cv=none; b=kg2Sui5lZUvlCuNTO51RUK9aDOLqdo6JlOx+RL6Q85yv26r+AzvIdgKhgC6KeXc/Kz+dZNIFWoCQ0LqPGrsUJ11EAgNSS5gwkJY0+AbRJkJTLXw8rilkv0ihin/u9JTFtVmtqDpza7a8VXMBkHbs4o3zHTQSEGvtKTEas+ZNpMA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719612263; c=relaxed/simple;
	bh=aEUjLDKdr8RdZl1vqFL4eoFcYveZDTv7MVuosVvwANE=;
	h=To:Subject:From:Message-Id:Date; b=SJUclxRU/t/S0W03sKC813ZhjtW6FxZWvAshBjHqEA3B1VcdCbEIdK481Qr8oVw5jzBf6UrkGznbo4PRWuAU1hMQPHPE98FZ6MqT1AqkRO4r6X/PO8sZlp7I1qXJoJh17NvuH0KlvZUIiAbRFxSaCsyrTXBYVnH1zQYL5pZIDNQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D72b9ZYo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D72b9ZYo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E8F0CC116B1
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 22:04:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719612262;
	bh=aEUjLDKdr8RdZl1vqFL4eoFcYveZDTv7MVuosVvwANE=;
	h=To:Subject:From:Date:From;
	b=D72b9ZYoJDVmuCzwbF99eVRRg0cwkcgdmmVfj+5P4KZxwcee0/1s1bs+ldbvg1FjI
	 ORU7rf4iOUifu9dbIFNoA4UZK/W/WMmnzhJ4+TZssGrnoVdVKvbM6I2Mau7Jez2IAE
	 Eu8TM+HWAkTnQSO31UIsWwedXxdR4a1feuuVtKWA1GPUHJgdNokYq2B5hdNqnDEEbi
	 24SzoLiXu0ntHDltmG7iiuRnVpI/HmUVvsTxE5AJTA9HebWai969zTTFsqb9VeGyuT
	 j0TgJj3tJ7LI7N0R4uvW+vrpIaP3E10LxrDxv6zVJZ/VI6qGtIp4pLENcbpLq1R7xq
	 7OeX61ORDCqXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CFC28C2BD09
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 22:04:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171961226282.19025.17025594822246248702.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 63e86bf993ef55154dc54e50428636509df44bcb68240e67028f865ae91c9e00
Date: Fri, 28 Jun 2024 22:04:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719612262
