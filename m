Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D47473DAAA4
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 08:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785487834; cv=none; b=PEb3jl8i2wBXKShtBPMW2IJu+W1M6Px9PfPMVWK6Zs43aWlpC0vz3FYet9/oGrnit/IfMWAxdEy46BTSqYY1dtiSr1rhJSIeSpxtTbTwQ4EIs3YpVngnE7nG1BhNN4M/Enq6fJhw4NNQ2IYxoMVBjpxrGDldOVmiNkB6JhSQXFg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785487834; c=relaxed/simple;
	bh=xBYj1BiMyjmrz5w2jG1FgQbQ1jETIdL/GeQ8/VkKiMc=;
	h=To:Subject:From:Message-Id:Date; b=Vnh0BxWRSECBHGzjDuMphtRyzyAcFTpgXwEf0Ed5Md9qE0ALJqDE1DmG+g5HZk89SA/EGrsUP73Iz1iY21gfSr9dmw3dJn/p+6hfZVZzjE7Xay8GNPjSEaXi7WM9XI4BLN3d6yisXuB95mb0+NuFaBi/bH3OyjFuvGIBTbGcDDI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aRW+ov9b; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aRW+ov9b"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D61FEC2BCF4
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 08:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785487833;
	bh=xBYj1BiMyjmrz5w2jG1FgQbQ1jETIdL/GeQ8/VkKiMc=;
	h=To:Subject:From:Date:From;
	b=aRW+ov9box+q7cLK62MFXTJAzLap3cig5JU/l3UB4a7frPkfVywy5DwMwyrTMG1TW
	 5NpgQNvWywA27DkhpkqHxDWlHCCl8T8JrjsztIM+sE7YvDP71JFRIL4PRgS4bGDYJr
	 SepA3gtgUOpwU7mNq8iMNHPJ4rYk1KfKuyrNgoz+oy/3nqd+2tA00xueTS4SJYvv1C
	 lKOKtE+4ONsiwI1xuI32TsNkZgQvVhOqup5hM2b3gyMZNsqWb/vUkJcyfQmDwI6VwH
	 gGs6rK3G+KXkbGNcSw3NF9aajHWAmffglJwp+Aus7ixa+spqZ5i4I73kUyGytaQqNR
	 ChaNNU2pLAV2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5542C5516D
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 08:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178548783373.23584.4504648114373015298.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d9fd80d613407586cb8952eb5851da48c5f1198af887ecea61c9b932bbd7c87f
Date: Fri, 31 Jul 2026 08:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785487833
