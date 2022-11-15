Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B4F7323C9
	for <ddprobe@lists.linux.dev>; Tue, 15 Nov 2022 07:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 65C3FC433D6
	for <ddprobe@lists.linux.dev>; Tue, 15 Nov 2022 07:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668496854;
	bh=7KP/MdXuD0S7e6FL3O/l14T48ul5QCtXQkWLCJS2oVw=;
	h=To:Subject:From:Date:From;
	b=TVBVJolRFQ/xU9JT+wgZTJ/flC7LG39+Xisrp+aMl0fn5lCGVCf21S5mpWrJD+333
	 gH73KQqY3T5T3GF7tefodNHyNO4wGNMRkYimGNfmFELBs2RkI1nP3AU+swNzYs0T+f
	 owsLIBb3auMCkLABt52CACtO4w4Va8DVPICBQc5/zhfgj5ZtcZxkh2mou1uDP/NRan
	 wN8flNT+CRF8i6aTQsbKqK2VDmxrOpIYUfLhaahmqziQoDCEMSilaa0wJuAIaeAC/L
	 9PdbIXGuXVJMxXr6ecaNYsFaapsosmZUw1ugIRwzO+jx4OuruOFJ1D07wx+EehKecO
	 8+7lbV6GNxPEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4ED61C4332F
	for <ddprobe@lists.linux.dev>; Tue, 15 Nov 2022 07:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166849685431.26437.9155554227701130553.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d2307c154823f36626635cfaa3281a49c878497843a48d0e93a6dd696b01b072
Date: Tue, 15 Nov 2022 07:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668496854
