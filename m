Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E05377E
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 21:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8BC3BC433EF
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 21:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671570687;
	bh=FeVOf5NqSbyItDoa1xtACXwG7W+/sfdEqFZVem+IXTY=;
	h=To:Subject:From:Date:From;
	b=fFPo+gZ5wUopKunZTFgj6NV8du5eR1AI87KrahVavMDzPh4V518MD0yQ22UI0ZpCM
	 QNYMr/41Xr0lxgSssynL4zxzsQTNI37QYJ/wJMNL+IWABsKsXuGfLrdBCj8ROpBNIT
	 ir53N2Jj5RBevKRryFcdv6puZqHV52SvuNCt2bG445IfFuqGuGNSq3yan0csRtPF6a
	 2v0b/uekrpgfnSMsxlox8uuvBdbsfkQR4FCV8hkeCDmcPXpzPH8NRmKLa8YAOssfVB
	 SSYfTq0ZbzSymrMobdfJJoCK7vhCwBuF+N5lXZtMA+eqmZtMW5HX4HUI2SSjJWVMTy
	 p+XucXofUsOrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6AAF6C4332F
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 21:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167157068742.14654.376820805224982681.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7e3c3bddf30c1d1e4f2029e71b0ed4ef5da5c51ab6d9cb82cdd5402e8068cb40
Date: Tue, 20 Dec 2022 21:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671570687
