Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 476802109
	for <ddprobe@lists.linux.dev>; Sat, 21 Jan 2023 12:52:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF687C433EF
	for <ddprobe@lists.linux.dev>; Sat, 21 Jan 2023 12:52:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674305525;
	bh=rK8NVjbsFt8c6wVt85dfy5yiXtpD+sucYrq0GwKM2mo=;
	h=To:Subject:From:Date:From;
	b=sdA9m7I3r2SM0cowj7+Puoy9ur1vOFbalDuZzRQ3d77K9lFTQQzl8u2dz5gkxlWF3
	 VurbExaFU33pc6Ux8egqRwtQl2VIfenchDz0zFueSPMJdIGD1ZnwKG0FBWRowkPEoa
	 yMjfF50wxPr6FoFwcQ0NkhBKY0E1+jbrG3jrLVk2iH3ILZ/xDdNII4owi/yDll2j6v
	 9ckw2IWZwJhfSfN31nbuUN3QAQbGVuFAMcSNMRaKEQDSIQdd6O44T9WJ+tMJ2ww9CE
	 dnHKu4bCaRu8HGcoAe4E6a8D0nyAxPEIBpb4NCOo3FIRNF97LlCoxiNJdKLc8f+esh
	 gd3QiHjpZ6c3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2C11C004D4
	for <ddprobe@lists.linux.dev>; Sat, 21 Jan 2023 12:52:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167430552576.1856.1441253215240356086.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1651a911f2896aca1d037260b553772012efc5ee93ae0abc22f64f248959fb9e
Date: Sat, 21 Jan 2023 12:52:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674305525
