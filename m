Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EA541E86E
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 01:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773536694; cv=none; b=h8CnniXw+NdyF9j/lmliujmOi9GXYybt1trb2i6L3DbapeR+k1izbX/eZis2JFoIp3qhOweG+YUavG5k21wq+TxXA+J0TRtzO9rwqIN6MrvypAnxORyQf6mvWeGDWxGC8DRV10hp8+kX3Yt6NqjybVi2zp8H0EJ+sIaCAEYFENM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773536694; c=relaxed/simple;
	bh=nfLMz7Frap0JQtJOk5GJwAkf1su1HQiujsOS9fKq0yM=;
	h=To:Subject:From:Message-Id:Date; b=u2djhrjTWqVGXAwfWli9fGyqJHtliAMpHYcWvtwvKgGbmyaZn7yXjJUcBGVsGEVA7n8KRA6s6hepnrx35w64HtkKyD6yvKF0m7f9VdQvoTLStiCh3TqoA6iHPltsXEmzTZXKCFD+zTVswMr2jGdmZkwyq2WjJ/Y/iL33Oo4frVk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Fn/j6VyK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Fn/j6VyK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4BC7C116C6
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 01:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773536693;
	bh=nfLMz7Frap0JQtJOk5GJwAkf1su1HQiujsOS9fKq0yM=;
	h=To:Subject:From:Date:From;
	b=Fn/j6VyKjwHq0LgUeNnepdkVXIRYZiAM+XjyVQBN94AXHmmyO2S6HnfcrRR8qu3ap
	 oPoM/jKgvc/TxbHKaFj1oQWpMec3pRx5ExHG6QU+TDXL3MRnWuW6dfopQOAMd/v2bO
	 blsi+V1lmyIa+iatVC/cIGtfcsIw0LoVxKxDRmq4jvzBtgvOVKtUbrcLZAYKVCTQIj
	 PB6cNYeiD5VrhF9L8qhkbsM44Ybs1l2XHBsP6ncCiXARv5EhRnQoomtYAZ8sAu6fJL
	 ArTj/cctUvk0wRSARaYBCOhJLeRDT59ORYkseOnvfrbMNL5vtnrum8sk36u+4ie/zE
	 hyvLPHnHo5ZXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9EF4910854B8
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 01:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177353669362.18120.12981621952643310482.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dde4cde3e9bc09dad2c7279e56e7ddf09e13f9f6d6bc6ed7cca91df5fb8568fe
Date: Sun, 15 Mar 2026 01:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773536693
