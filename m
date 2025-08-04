Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F89126B77D
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 14:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754317194; cv=none; b=LT//2ZRozJwXNq9U97Oyr9WZzQ6hZFt7oBQv+RIi3ZWAIvwjYyjjhwR/XxYZlgOQTs+PasAU7j++1dR95lfsgIJXqrV1BUPkdLB4vUmwhPz0EBxH8I6zZq7wFtujDrsrMwd05Ahcxj2TM2x1KIL1ilYzhkl5jeMViKs7RphCB7I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754317194; c=relaxed/simple;
	bh=bVbdoZdhJ2l1rTFe5fC2GL4n+q62y6+J8J0D+94U/2E=;
	h=To:Subject:From:Message-Id:Date; b=trNNZ1wDes6E6Ev59Mic8HjkPJSG9VqufeMV/dsv7Tu+jy1K3WXHLvLQfEjVb97k1QDf5E5Km46OqiJNt3dNVBAslA3UTT3m6upsgbxmAgbfPaHcOB1BeWxHpHG1eBJC7C+dp0cI5QtudsDH+xA4Uv0SacB/duytgmrcR6549Os=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ow8EwRpF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ow8EwRpF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9A9D7C4CEE7
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 14:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754317193;
	bh=bVbdoZdhJ2l1rTFe5fC2GL4n+q62y6+J8J0D+94U/2E=;
	h=To:Subject:From:Date:From;
	b=Ow8EwRpFAKszsbI2NUieQWF2yFZEzmsDye3vhz0Q6S2qlDZoKw2u8tmuUpnkD/NFV
	 zm5ySxYAnj5voY5GXo/r8L3VHyVRJYJ4/eVmGY8LiTrPz/buDYsonNiSpQv6dN/FHu
	 pczluY4A5n4A/7qKyPPVwSTPJG9QUi7kjHEskmf3jp7FmkkF1jmtvq5VfcgYzs6QdU
	 UjpIKXoH36TalVE26O1f1RJzbcsMMxJwFWNCIvAoWPDFf/RsfFZWFZt8utrekxq2Sl
	 5GnM16gCn4h8VDV4STq8BemhWVxV3ruDR8ryRPotO1uy9MGbFgdVDwbJ9RYiqOd9kp
	 Ch3b4Pw4IivFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90E9FC87FCB
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 14:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175431719358.7521.13560199464704866260.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eb98c149aec431ec817a6886d72215bc796f12f64829db0991965d9f63b2b2b4
Date: Mon, 04 Aug 2025 14:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754317193
