Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C0F9A17E0
	for <ddprobe@lists.linux.dev>; Mon,  5 Dec 2022 08:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 75078C433D6
	for <ddprobe@lists.linux.dev>; Mon,  5 Dec 2022 08:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670229654;
	bh=ia8c6iDEq/byYOz82Ky21Pw1q9cAjaD2J8TOX326lBs=;
	h=To:Subject:From:Date:From;
	b=YnyxvXTvQWRs8ih1OGG9kPTSp9c/UgQwHxovQaGZuVWHbiKefH/ylh/aUCSGBW6b6
	 MI4ifMnFtZn7dAtOZymCAvy6BkzhmpesztKEg6uVTQWeOPAYLBknQhadhiSeV3rS6V
	 TkSNY1UEnBZB0RPnhC2wdbClp81CvhQFdlgb3946s8LGxI5rIMotTmNOfEGax6F6DT
	 gLJauKzCASrYb+nf6+W98oSiJ1uH7QxNqDs3+owQ4eCIG3k5GHrcat8E9mPr3HpCyR
	 yPCbRDExK35GD7gtFw85imx1HL0K+aMvxAn1Ob+47w1qALx788xc+th57vxA17yD9x
	 1MPyYwxovWREQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56678C4332F
	for <ddprobe@lists.linux.dev>; Mon,  5 Dec 2022 08:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167022965434.22289.1652209295415325649.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e6323164a07a696b99334e245d74dece4c1d0c18150a866b36220b1acca1a44e
Date: Mon, 05 Dec 2022 08:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670229654
