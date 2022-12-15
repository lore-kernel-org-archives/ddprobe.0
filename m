Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D8B5520E8
	for <ddprobe@lists.linux.dev>; Thu, 15 Dec 2022 05:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 892BBC433D2
	for <ddprobe@lists.linux.dev>; Thu, 15 Dec 2022 05:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671083487;
	bh=d06VKNvd9GVp2d44MJbJHRQpV6x4Faa6qGg7/KaphJo=;
	h=To:Subject:From:Date:From;
	b=U8+zK6VEDagkW9VXAFv2UjsRQtC7etSS75bJNSS/aBZmn0uksYYIMhC2/i5RLDMTR
	 plZRS01Yw//Htpx2Uc60YdqMe7RFgPNZ/R1WWzDM/5DXD4Xu7Wkw91aQMOFjOM9wcY
	 x2iIx2Num07AAnhxdYFEbg5moIe3Lr8g0hhyKJfE5P2GPL/SdAdX+XPnN2eHiylTrs
	 B3OzsUmtdNYIHMYhE2bv72eRQ6wd53kf/5tA80y1YxiR3+goqJRNODQL/A1zf3PLEQ
	 9iBDy4K/YbQ3RfaTtksmziQM3wHwFeL9jA30cuVNcDPqElNWBfoFmhzd7u/FPFg04p
	 BXown7IGZ4C8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 685FBC4332F
	for <ddprobe@lists.linux.dev>; Thu, 15 Dec 2022 05:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167108348741.8937.16771394638395825111.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 598011ed8309ef2f368efce52e57ecf662cb0c9b20f4ae5d10311daec7c273e4
Date: Thu, 15 Dec 2022 05:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671083487
