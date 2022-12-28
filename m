Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D96C11117
	for <ddprobe@lists.linux.dev>; Wed, 28 Dec 2022 12:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 811E5C433D2
	for <ddprobe@lists.linux.dev>; Wed, 28 Dec 2022 12:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672229487;
	bh=B2PJwTOTDZ6JoD3X/xbe49WeXEvM+PUuwCc3mDwh5Rs=;
	h=To:Subject:From:Date:From;
	b=AM1wXlfsiE3PCDv/lykOI/ZJbjbEbdJJEjbeMFyVgTAYn1ZdP6hJw4BuGb9iAHKwB
	 kzZgdmhd4dxfaRmBtz/abCwpW5PoL8AsCIMPFUBRHgEvMVV2MQAle3zm3ZIw+1i7Tr
	 TOh7vfuaADFl7zbAtrg7CdcZb8WbR+h8r8GogOGS9s8Cw0JH73CqAo3qwZzRutaxzx
	 KD15CAqAaMBx4LQCKnYlEUnFdOv8pSfeUUxr1wazExclLdStgzZ/R9I1A/EESV7mPS
	 EbgvpFToVTn5AJqPfgm2FNA0W8e+DvCFvwcJshZHVzCX0jT7GJBjnOEaAHc+pkosDp
	 TJo0UUi3hHgbA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 65096C4167B
	for <ddprobe@lists.linux.dev>; Wed, 28 Dec 2022 12:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167222948740.9635.1285200829343700736.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 044996bfb8975e9c313f31933dd0eb2ec92f5a1c6b8c610e60eeafd421045b59
Date: Wed, 28 Dec 2022 12:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672229487
