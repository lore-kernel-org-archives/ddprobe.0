Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B95581363
	for <ddprobe@lists.linux.dev>; Fri, 30 Sep 2022 01:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 69DD1C433C1
	for <ddprobe@lists.linux.dev>; Fri, 30 Sep 2022 01:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664500253;
	bh=XSpuIund8A+2GQzMJclutis/NC2e48pqhrKBwC3H140=;
	h=To:Subject:From:Date:From;
	b=cv09p+GP4Gy3ShSxhjaAmQ/opTyi5928JojQssNZid0gSARp3ArFeLY2YCmpXaYOD
	 EHUpFfV6XPtKO5ULdFspbuB+GD2oh1oJySmW+OwIyxZSCAkwYf5MBNvtY68Rz24X9U
	 +ttXc56fxES1laRDjDf0yR8au47rLXGOZJBPK9rIR4VJ8A6Cib9+80egPljarq+fl7
	 yWciJUhPJGkW90EagFtbxw4XIMh89wLFbsfbvhVaFC+x/+AMrW/VYmQknmqsDWSuhS
	 Iyw9cMlcUuT5djJu8Y0Dp7VlvW2LLdwx2haEZmLlP5/JZK4mxQ3fGqxZgpFoG9I9Dh
	 nge+jUwNXHFJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4F2A8C433FE
	for <ddprobe@lists.linux.dev>; Fri, 30 Sep 2022 01:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166450025331.12580.13008967632176560451.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3606def4545121cf36ae613d40ee130b7a88666f49efc84781ab927d43d7103a
Date: Fri, 30 Sep 2022 01:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664500253
