Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15A482500D5
	for <ddprobe@lists.linux.dev>; Sun, 24 Nov 2024 15:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732461354; cv=none; b=KbTFgSSQiF1cMN0VH2DHP7hFw9HRrS8tPlHJcxB5yI/462eaunMSpIxJncSSPICuuyhdDN2bQ/5oysaEh2cw2LjG4xTiAhDcB9Ei2d9a/wn/c8/YYVTLzSkvn1diqIQKIaKZUDc8c/kPk9069rqKSbG2sw1w5m+gaQQShjbPDm0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732461354; c=relaxed/simple;
	bh=K7ldSWu+XY5TEpEBMUkLvL8VmLCK8L0/KFDZJGfECN8=;
	h=To:Subject:From:Message-Id:Date; b=TkgwxXtMVFfcvCbk5NMrhSrB9er90EUeWwEQeAG2W79fM3Wp5FW1d8ItUp4oFORvuVNnaWQ8f6qSq61kzE7TKNWzcEugF8u+2kS29Ta0sWgBC9XBeBoI4CoqkUweMSKnJvyEnRaza+3Li5YPhT1F1aLAZZF5hHOVxEfzVslf7vI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f7SfE7kC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f7SfE7kC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2A37C4CED1
	for <ddprobe@lists.linux.dev>; Sun, 24 Nov 2024 15:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732461353;
	bh=K7ldSWu+XY5TEpEBMUkLvL8VmLCK8L0/KFDZJGfECN8=;
	h=To:Subject:From:Date:From;
	b=f7SfE7kC3b16flkJjbCQuIM1oPUXdxjUvsuxAeOIFDKY8cJ7sYzsh0N2igkqjLWPM
	 Q5UWvK4vfn79cLfeVAHuAsKE6BBVq6gTfK8RvGwK+aGN6IdfPSo9IuEgPoTlHyOHZ8
	 jmphsiiuceCEzVKkiZrZe+veLAhF6W6PuxD2ZFqdMGJl8A6UmqmNIFPZ2sJVuOLFVr
	 0CJxxWoXoyFoo7cUuJOQtLcNpJVdz2wCi0QkBStrnHnHM9KW/qtVGewr8YEgFC77fO
	 w24DGbFOb+TXzD7vOWMTxhcGWDng7lchs/ClwgRQqOi9vUP5aDALs/Dbw8QsTxOjVg
	 zpqVlgyBANwgg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A068AE668B3
	for <ddprobe@lists.linux.dev>; Sun, 24 Nov 2024 15:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173246135362.12043.18201081710704632466.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a92bbfec627bdcf58bd6b275c929ea40e760d38a22a77aa84d759f553e798e61
Date: Sun, 24 Nov 2024 15:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732461353
