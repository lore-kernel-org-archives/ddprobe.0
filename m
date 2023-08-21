Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6841F4A31
	for <ddprobe@lists.linux.dev>; Mon, 21 Aug 2023 15:44:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5CB7C433C7
	for <ddprobe@lists.linux.dev>; Mon, 21 Aug 2023 15:44:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692632648;
	bh=9V+eqY2M3YJtkBcPXobRuy2RywG+/yr8pO0PuScagu8=;
	h=To:Subject:From:Date:From;
	b=Mh497ovNTgysxVdUF6i5bdKltJXS4YCCyg6Rd1Wpv4+khA6ojFgIcDp4ghXDmFJLs
	 6RQ+Dn30Dl5xBCnkhYPE9Gh40PsC7CkUo2wbwhCN+uLV0hcfFcB802baB3PAuV70TF
	 aIg4jmh/nrpE/THo96jXekmbTPGWl+5elS1yVT4rhhJrVY/SRBYC3Jo9vsoHD10S5U
	 iYe0FcR558cLzphWjfHJJjB2SCXrVdFHvUtr4FGiyE/AvhpRpsjcLn/rSlkBRAJiY+
	 sZYkFe9cK3cYxWC7ZADoC/b8ljG3nDtEYr6+54d9G40vNBc1TV1ZPUd4DE8Y8X+djL
	 r+g03LQrns6mw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAC91EE4996
	for <ddprobe@lists.linux.dev>; Mon, 21 Aug 2023 15:44:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169263264869.13815.11205221689966053975.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5c7022313b6373621b1b53709711b74f85429ebcb37b4e3d1605ce239ae22fa6
Date: Mon, 21 Aug 2023 15:44:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692632648
