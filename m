Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF64B7E
	for <ddprobe@lists.linux.dev>; Wed, 28 Sep 2022 00:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 70C82C433D6
	for <ddprobe@lists.linux.dev>; Wed, 28 Sep 2022 00:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664326253;
	bh=AA0tL8U9PVB3WoTntPBKl1q+4RjzDsCFNCM84X3mSck=;
	h=To:Subject:From:Date:From;
	b=XmKC8LaGgT21LRoK5/6lrIbnpeG+cWmMK7OEt+ikWsPiJwethyun/dqyi5zll0KPR
	 +RhPlaR6QQ+yyss7ym7Rejg+x2mxHElnY8/Ki8MHBIi5EcmNdf6SNRlKb1mhkDSgjp
	 N6XCp70RFdIfnmTs2uiv4aUFvwprzRxj5Uj31IZPt5hb5RZCU5pjI+4DlSZOLyvhhJ
	 j9or7JxEPzev1nJYHHyelZxNHn2zG4hQYYbf0DnzSTL/VkJ/KP/cL8caiDvgdVgCp3
	 OUtHszVouvPCTupfs2Jgec/wzb887Mx0XtJSCyrgKVPdbFzh4Tb11r5KkI+UGfPson
	 vxq9cZ7Gjwzfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 559F7C54EE9
	for <ddprobe@lists.linux.dev>; Wed, 28 Sep 2022 00:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166432625334.26912.5012968569755490761.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f7f4827f67598957962c4db77be92e2b86749097c270ee0a9095bbdba820b1c9
Date: Wed, 28 Sep 2022 00:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664326253
