Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A1CD1B29A
	for <ddprobe@lists.linux.dev>; Mon, 23 Oct 2023 14:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XeoxiVg0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0EB5C433CA
	for <ddprobe@lists.linux.dev>; Mon, 23 Oct 2023 14:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698071296;
	bh=PkklvUmKTbqgql0DUhRuipqDzAJMLtn83jdM2w37+5E=;
	h=To:Subject:From:Date:From;
	b=XeoxiVg0vFBeXmGbjYXp5OYwfcT4QmsbPayrsRcsyK5GPNh/1hFEy/+ZIkvgBqY6B
	 dn5UQkf/IH3qeWv/JCrxgN3GcbzVdt6o6A/TbAXYqmsMhFHdlqcL1KCo0wg3E5ioEI
	 jAv+7AhFzhPLefoRE+27g5fNefL8BB4hYnqdW7kheedYGUCcdsKzSN8dTzB4Zbnx3/
	 lVkVxMG2cbKO6C0OqrLKc3ZAW09kFkNcMANfJBqR6fdXAb+VVsER2K2SVUUJ6R8Npu
	 XBNzB1tHl0t4Blyzn+sYOEdpkqlTBFMZhh8MHPKZk8wJ/E7AdRZ/K74Ex1odCE8qby
	 GFC/RsSbis50Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7A4E1CDB474
	for <ddprobe@lists.linux.dev>; Mon, 23 Oct 2023 14:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169807129648.4468.6301500693311336608.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a182c9698a33d089edcfdb14bbc713da9d3b061e5a246a32caf2410c633ba963
Date: Mon, 23 Oct 2023 14:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1698071296
