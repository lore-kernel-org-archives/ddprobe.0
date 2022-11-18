Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D0B4AEBE0
	for <ddprobe@lists.linux.dev>; Fri, 18 Nov 2022 23:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 71404C433D6
	for <ddprobe@lists.linux.dev>; Fri, 18 Nov 2022 23:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668813054;
	bh=I4Yo0LM/WLGvhPQzVa4UdzkYr9WW8OnZ3AaKCe8K8cs=;
	h=To:Subject:From:Date:From;
	b=Suns3W0iPRSmsOhK2VMZDSJ0uES4Jwp21OtRGLfzOyiR8EyieKjS2XeHAbw3ZSAup
	 tDfjpJ8KsPLcoM3G61vH0K4ZHmuK1LlSYqbAU3OQ5eG4CEsG07K6t4UlEFjLzVi6tk
	 v074z88fl/HZIX2/k73gFUi5SZsv9MS94Tx+GUZd/+Y26YFXzX2HXVKhj6hiewUDC0
	 ZIkADdkPHSsInsFrsNUkPsTJrvH2iUZGXpLpeJnw5Dbn3v5GN0qvgeV+vIbb8FnveT
	 VGSpSZAde2A3RchhUuSmk59+wwkTDzkQRMM6/txCpjKIn91HJHkoiBFXP8qRK0BT//
	 akLOIdCffTAIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52FC9C433FE
	for <ddprobe@lists.linux.dev>; Fri, 18 Nov 2022 23:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166881305433.12993.14132868509261557560.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 052a8e91c1e7957244e7860aac31757f22776fa9de35a14a11aeb293a13d2e85
Date: Fri, 18 Nov 2022 23:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668813054
