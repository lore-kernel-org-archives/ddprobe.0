Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E8B717A2F0
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 06:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745647794; cv=none; b=j5n80wEO3jH2+21XEzT0lDQUgwv3xduUW0lgbsE7k9ar2mNww6ryYjoSbXPzzOB/MXHDUGLAS0/aziGi6pAUjnTgal6N7sytBiPggEafv6clhB3X9m6aJ+k29PDqKBHNaO6la3tU7XIrRGgbg+tf/RAvDnLdxzsBoLHAD+kpCYQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745647794; c=relaxed/simple;
	bh=qz4JfNaWQnvyl9oF7o6WWo4jMGkRxhZvdwlVFPCPsuk=;
	h=To:Subject:From:Message-Id:Date; b=Pd1Qo8/n8vJL7YTP/Ocm2f6ODBfq/JIS0ifaON7nesYePZk4XXd4j/iwmja4h/LDOXuiuzTm5K0aN03uQQRIZ1HTtBx+mmw9U1FhiRjsUEQOaI+LN2W/t4AWCOcnZ5gYn0ZC4Lq4ETDJpfXRz+q09hq2zo1+Sn+QGVVnAfcWEwo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O5MuJY7x; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O5MuJY7x"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C247C4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 06:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745647793;
	bh=qz4JfNaWQnvyl9oF7o6WWo4jMGkRxhZvdwlVFPCPsuk=;
	h=To:Subject:From:Date:From;
	b=O5MuJY7xadGbXgEhfpfzKGiDfAYn6aV7AHppdtdqkrP8gD3ynej1y4zLorCaTaN9z
	 /E1pGNlZ9bSYzEHh8nA/Wv3gfBtk+gnVzCNfqH6tDTu5Id2cTjap/yeui9UM66HAl2
	 A9SzvhODresatppGusbJnSgptJo7INlNzXgLVquxwhmVOZ032ASh4K5y+xk5g+Bhpv
	 20ko/RP3vjUO9Cavg//m88s+Ez3w3i3bV6uB0EmbGX/jbtxNMNsoK6JS6KHORvnhyq
	 LMB8M/3+x32T8cO6Sl15x3JeHkQdOYcQCvPwf5rpCGEaOfzpPBAVSgjdwllW1Qw4Dy
	 gKuI+Da6QGrRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E35FC369CB
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 06:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174564779357.26813.7080396225088440103.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 812aa2839ae1e0234c8b37a778e06c32f139ded94dd51dcc7e610e3b56901ea5
Date: Sat, 26 Apr 2025 06:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745647793
