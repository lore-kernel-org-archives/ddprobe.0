Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CBF91258D
	for <ddprobe@lists.linux.dev>; Wed,  7 Dec 2022 17:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 72CDDC433C1
	for <ddprobe@lists.linux.dev>; Wed,  7 Dec 2022 17:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670433654;
	bh=7SfxoYjHs6cfw59/o9Mv8H+Bu5SsJFcEZe/SsP43EPM=;
	h=To:Subject:From:Date:From;
	b=b4Oa8IXr8ex3Sxs5VThn907QOLmOk6K+PNUM4u9o6gGedfmBejZko8ovUpvj3qE0O
	 7InplkpCrUzp7cxdnTkj+NZ3NXapZobAVM2Hq1swfEvqjKkltfCUWlx7SVCquurTmF
	 Y0k58qiayArBYt/FaT25ORt2sCcinEDE8e5GxXyuk+tNWexGtp5HHCrylCmKK1h4He
	 yZGcus2FE+1DAZY6iRqS2UiardQ2+M3s0p7RRnbqRhwOwL9TQd3anIiiaPd/0ChG9H
	 VhGTAV2zBiDm4OM9ppHX1T8dtUAJWXA7vhykvrwMVKC8S4KFbAsDSyflCmAq0C1zTp
	 LyynOnFe2Z5UA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5947CC352A1
	for <ddprobe@lists.linux.dev>; Wed,  7 Dec 2022 17:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167043365435.12385.4874562206324858038.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 16053e98c51134e1d0e1a82defdfaa0e0b11b246e2ba46196e97c09fafe468d4
Date: Wed, 07 Dec 2022 17:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670433654
