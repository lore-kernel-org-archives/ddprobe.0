Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44CBAA55
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 02:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771728894; cv=none; b=acvDwF4HFZSOgF03ZihOyPa2+3AZAVQINCNBSmwtmERdF1uLDrd/7LFIDil4B/jQp4llgGfcTd1I04RcsCFeNlvnkJ6JTFErpGImXVZvOBUThMDDV2+auoEjRWko5rVxI9hl9wA3CWip4a7XhNLLTRhHPy+LsqwHoyPav7CI9sk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771728894; c=relaxed/simple;
	bh=hCBJ5H/ZskxURIkIvlIlovaehB7Fhkf1SSZOYNGuojo=;
	h=To:Subject:From:Message-Id:Date; b=lJNRz6tjQ3RXtXlUCxUDWRbcFLbvnVGq8eMiCqi4iiH6QV99hxaXSb6U288BFmfh6H9M08WKR8gfO9uBd/SRcJYYvX/mIApNuAmYRsaL9DJTUYTv+a6eoQ0axoUl2QnCdj6Mqe7Xc/qmCA7GSrdO7ZsHQ1p9Wmzm+7CV8lXbHZ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MWFDphtc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MWFDphtc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB7C5C4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 02:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771728893;
	bh=hCBJ5H/ZskxURIkIvlIlovaehB7Fhkf1SSZOYNGuojo=;
	h=To:Subject:From:Date:From;
	b=MWFDphtcVpXziof5BjOLr9uZNEsssGHcoz7sFmxKaXv3avBWvPwZG6E/DxQxi3g9N
	 zdeCO/vwPXTJodlf/nnNgFnq7zbaYbI/xte6hhSQ2m715n2bQ2hAyw0fWbEt7qP/ft
	 /r5oxpNkULYreyAgBFl25VTcUBT95v8Mj/5BcR1kwzwvpPUZLT2BxpagXOcBJm2IKs
	 tTFTx7MIqTKU29ok+EorolSmL7n6NIWO8PYazzDVtSfnhhCkTQjxk1zFIDOlHhH1R3
	 DTcjSC2YULcULoWUWTruH4OuZ7J6QqfWWr58tVZVlDzskTYCDin5tfBKvdTX/fQWRw
	 UkrxkfN4ADPSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94EFFC61DFF
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 02:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177172889358.12357.17883998946218020068.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 66850075916ad24844d8a8a0f5d4e2d4575fd5130f3c9c023a192ce9cdb73747
Date: Sun, 22 Feb 2026 02:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771728893
