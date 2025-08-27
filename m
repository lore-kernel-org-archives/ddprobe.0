Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CD2230CDA1
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 00:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756255796; cv=none; b=JyQWEQ1rWZRhtZ45/67eowPbE8oxinDmWb8Lwj4tMwZQNC30zZj2jrvpi3O3yP0ZD2jU6OgAUjSh99R/Pdgok5Kw1t7qip/M9E5LwhNnBpqYcDQZeoZTweDKZdg17bdCYX6b6zp4nqalECek3n7ewtTrMMFtbOLWT1xFLWnxVOM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756255796; c=relaxed/simple;
	bh=/anE/6yYIOomO5ONS3B5n99gp+wOiNH1FsqZ94W3ZMk=;
	h=To:Subject:From:Message-Id:Date; b=nhwOvf/1KT0y3t6I4vgjNA1iWXHWlK3w7IZFzrQUpcELi7ba2vtNYF2yeUWJyIUxqRs0JFB18QWNPEzrJW0W49sbkGeOD6DP1yz+Z5MOLqhR+KsIegfUbzxHgpNgPZpnS/CV67KBJAhiGWLB4nn6EY5cblc3schE0uGfcg5NWYU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XsWoMuMU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XsWoMuMU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2BC9C4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 00:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756255793;
	bh=/anE/6yYIOomO5ONS3B5n99gp+wOiNH1FsqZ94W3ZMk=;
	h=To:Subject:From:Date:From;
	b=XsWoMuMUeEY7G13/3jV8zKMpjW6irSSxSwVKBzKhzWZBHjLT+pF6TOC9IcgbvqKvu
	 bQR8yC1noM8bP6Ln8Z+LVhLLR8mPmk8xZKNHkP6P3Vsup1FNHQKGVZB201Y9+efHyq
	 qZMxizIG5Oxhyhl880A7Mk1BYmwN3Pt0XGdwRO1uzlKVEtx/A/nIEvdBa2sPZwkR5i
	 gVadNG/7VwN89iuREGH0Gwfor/nN9mu9YRoc4fDbDRrss94y1HWThhFkSAydL2uXy+
	 Fq2LsLiVsh+OTCzLsT5vHx/hTt2CSeVy7W8sucC41c9xDpUJPYaxNuChsHQfkMilyB
	 VOUSRtPV1r5rg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90ABECA0FED
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 00:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175625579358.7902.2377546757005149713.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 96b384bce3e57b0f516ddf457145f007d457a041a354eaa7625fffd3bae77424
Date: Wed, 27 Aug 2025 00:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756255793
