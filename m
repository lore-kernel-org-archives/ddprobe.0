Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7EE70EAEC
	for <ddprobe@lists.linux.dev>; Sat,  7 Oct 2023 18:07:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lGI9xdea"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA553C433C7
	for <ddprobe@lists.linux.dev>; Sat,  7 Oct 2023 18:07:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696702028;
	bh=FlbaAvRCj+VfK2LzSAxnaCJNm3CTRW41OzBSIVHCmIs=;
	h=To:Subject:From:Date:From;
	b=lGI9xdeaN89P2GTFFo3zFhJAKSt/dqXqasJrg9vCuJHCbDX2a+CcD52zTqKeOX4QJ
	 vcNs75LqUvbh+S6dFEgUJlTUoAUsXdMKsx99agSlYfY6QGdXB3pP1+54Cp0rvs+MNK
	 nbnT6oOh1eK9RUcRweKIzknWcCQ+tmMtDbT6eEv4FKxBrJXBnR9VOv/WWZSdjX9j9V
	 WrXzIaenjRAyiVrrujUBn+kgyKrUA2GjmLe0ke0k9i3Q167NVwRYaRpTpglycqVYvH
	 SaFkf2n9UykdmTeUnSmHqZOybJuWRToElsQ5h+QYN6rGa0PAEDD+4kIZS3Sj+iNtiI
	 L+1MnVVBR+NVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8A19E95A65
	for <ddprobe@lists.linux.dev>; Sat,  7 Oct 2023 18:07:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169670202872.20662.9160539980761876278.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff2a29622260c12f292cde49fe0568195636f8827b5b43111924f362ffbd4b0f
Date: Sat, 07 Oct 2023 18:07:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696702028
