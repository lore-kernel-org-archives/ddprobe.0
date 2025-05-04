Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4153514B086
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 10:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746355794; cv=none; b=Pmy0Ad8AOsJWnOKaOgMHeb9560Nmrpdej0PiukheBCiPELZoTLpYGuytyKD8+EqrFjsELCEFVA/E1GG219lpNk2TT7bsWFEkqKtf/66DJvvySRT2wQFTU6u5K++DOZfSeH7hrGoKNQzDr56zsRzqu9PiC5NDiahx45MwmWdlTXw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746355794; c=relaxed/simple;
	bh=Ql4cLiCE7bXVIE6sOrEvCiL32FQ4Dudw6kIjd1HAZNQ=;
	h=To:Subject:From:Message-Id:Date; b=AW5qbPkrUoG3ZL1TW2P41W7QE8l8F6JUraD0cMjjJjrIFxJtnOBtx3vQaFkS106HJk/gVYRD01zUCKRZHE1lxMKt4jhGqLryXsTLlKGsWT0ZukCXV8GFm1IVNd4iTi2OsxXbE/SbMhODkxHju6tlJvqssBq8S61OkrQVcXTyOzY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OiN1GBZV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OiN1GBZV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A49EBC4CEE7
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 10:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746355793;
	bh=Ql4cLiCE7bXVIE6sOrEvCiL32FQ4Dudw6kIjd1HAZNQ=;
	h=To:Subject:From:Date:From;
	b=OiN1GBZVOAtBPPTVN2VCiXpBzcx0RVrVOYZenWk5GyE6ozaYY2fIQyHeeVHDhdUpN
	 5toe+1/LfmL8FnBWYkeVylXnK5RSIWI6i9GA7ti6jc5/h/wQtd5jfkRZ4nVWd06kfK
	 rnWRw87SNFdWhbMdfOesB7lR6IniJRyO3GrewCS4TqFn1sm1WIEpM2kJPrsjmLpHZJ
	 FlYxkZLYviawE3ZYC5BPHuYXDI3LaNoK2VElpfTtmX+aUf1UaQFPUnDSjWDcZO/NZD
	 IXAHtVUIdHY956lcdBhlE7L6OAg/V/bnmLWd0vdD4jP6Gu34pqcxdNDGKgqSBguKAa
	 MhuAzpWk/cyrg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91095C369DC
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 10:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174635579357.31767.17872020211903470645.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db106b403f907d5e32f07663d43a581a22516587531ffa05f4db05bddc5a109e
Date: Sun, 04 May 2025 10:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746355793
