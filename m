Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA28F179
	for <ddprobe@lists.linux.dev>; Mon, 29 Aug 2022 06:40:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6D08BC433C1
	for <ddprobe@lists.linux.dev>; Mon, 29 Aug 2022 06:40:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661755252;
	bh=N4Su7LmTouh+VtHYNaOaFQHyJ3xLf42ANDWnyTmtMWI=;
	h=To:Subject:From:Date:From;
	b=amVevAmzBSdaCh1kyThKVKtNKvZglsWVC4yltHtx2W+jTOqi8955NiiS+2yEkvLBK
	 1qnS4spnWt9Xm02fww6MUcvCUASRox1mf7injNnoCi+rO9KR0P4kfQJL2en1j2ZLOD
	 Bvk2Irx1zXTztpfA2HmiIOIsdN4ACJOW7C4A/jmde0dOc/+AqwgOnduSb3orPX4vqY
	 +e5BwKziyTlC1WOleQnlgJ+JIORzYdAPkM8r4lPVCl6ihd2KL/MbvB2OEBo0qmGseC
	 5stWPtfmGcglH+CXbe3PHo0sR/3NlwaMWcra0NZVVRmiPtWMdk1r2BUO9aFbXoeOvZ
	 Z6vbC1P1pvRTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52810ECAAD2
	for <ddprobe@lists.linux.dev>; Mon, 29 Aug 2022 06:40:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166175525233.9679.14755323057033956034.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 24010910275dcd373df4afd0d2f94cd038a4dc8c76bf8e3e088d4ffae548d6ce
Date: Mon, 29 Aug 2022 06:40:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661755252
