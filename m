Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 137C018FDBD
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 18:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758996594; cv=none; b=bj9oF3UhV5fdYYVwF5YkOVnFJLbY+J+UJNYUj6DXjb4tNKdNTK0npqXCXv4J5JXI7ub75TzuYQ6fVXP2PuK+bOJU4nxETulbyJ2cuvQrC8eXb5DKB90adUCY5KVBk4stWSzf/qCVFq0dOv2oftjvLblDmVLpcg6RsLzsyEa5lVg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758996594; c=relaxed/simple;
	bh=g5c4pv6p08D/yKK8PF4ltkmTXun9oBxRp20bo0/1JWY=;
	h=To:Subject:From:Message-Id:Date; b=CF9qta4r+3B65rZFAb/B7kTa6DNN6Q4riSOYt5pJDyzX6QBS3sOV2Ev77kDnpQ60b/ijCHekulYkht42uHeYa3EBukYjQQCJ16X+ziKkaQBVy0UThcFJ4NVFMf/V6JyI9P6A0T+B/hqgBSVrM/NEz7Tcm+1S4G1ERNWX6kUVl0k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gAfrCOzm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gAfrCOzm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5D28C4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 18:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758996593;
	bh=g5c4pv6p08D/yKK8PF4ltkmTXun9oBxRp20bo0/1JWY=;
	h=To:Subject:From:Date:From;
	b=gAfrCOzmUUUTil2z7S//4JKSXtScOQKkaMsHrTJw0LfMVMQJm5ZJpB2Hq1ahHYMsg
	 Ohuhl2jQbSojSo7R/4pKp9EM/jZdl+H3/oNkKq7ciJgPABmo4tskaShrny4X58VZql
	 JMCOA0zYJtG2NUMAiBMe8Mh1bkKivT2chH11mQFOz8rrIW+/a8UtqnfEQhYNlbiCia
	 hFBHiZ2QvwekWGpgtlV5zJS/cekS6zPBKTGM91SBqiwUFDeTThT6u1FhO4KDQWLnuI
	 RBJFHV4ttW1BKcScBxo55OioVYAxJo0N/D+deh3F2nPN1as8K1ymWK+oFvuFCjlIlc
	 UEx61B1mMi6rg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96688CAC5B0
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 18:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175899659358.10344.13582540810174224504.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0cc893cf0692186f41d6f40f7746fb77988cd12f08b319139c274753a158952f
Date: Sat, 27 Sep 2025 18:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758996593
