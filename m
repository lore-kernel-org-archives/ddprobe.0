Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46172176FB0
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 03:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746244794; cv=none; b=qF6h8e44Yp0jbx029LpNfK7fW0IWi9pJnAtp2eXWBq26mKoMuLpiM2mlpODrH3T0zI+TU0DYM6lINpKWAg6riRkjvNXw80F3g7lM7A0IbSg3YYhgGNoaA1AvrYiKOPYgeYa8q1GhtLvPqIgXAgETSxx9azSlVc0I0MTfGXWQWOI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746244794; c=relaxed/simple;
	bh=oGVFZlkyFxE/Rnq84Qv4d0An97ya2B3FpfYHqMlBu9o=;
	h=To:Subject:From:Message-Id:Date; b=J8s/uPiqv3rRi/juW7e44ybTnNkjVd3X1EK34bSgwT7syEI0ejRuSfC7uGR1ltK2OYAWJBYXfeGCWZCRhbT5HTjKFszVB+GubeoEPMcjvEcaQA+T6Cc27589jTXCNM+Qh58jEX7GD5mWb8DKkVQe1sh8br/OskZf1XTmJCL3o48=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N8ft3m3z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N8ft3m3z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE71BC4CEE3
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 03:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746244793;
	bh=oGVFZlkyFxE/Rnq84Qv4d0An97ya2B3FpfYHqMlBu9o=;
	h=To:Subject:From:Date:From;
	b=N8ft3m3zO13+/TSsrIRM3qgv6bpRBS+Ke819DXYYhVpS9roa/dN/eGvYPnzbsHIns
	 EzLQlQlwMpLTKC/sRaMz1VTtWOhYjPpCFV33U8PvoRfpVWLTFsvP/K3QC23qWGiMA8
	 OcDwqBVXuQQUx1W3e/T6N8cv1tPBauj/AgkLCeRurHHqXasWaJ9VDk6V+w77TWXdqg
	 /ajyyA2lPyojAKXVSzZIO1y90XoxF63sc7kGpoL8hihmEkn0qsBVQSBJj0OZKopHlr
	 BYwPwcpvgS58UIlynZJ1M2VOAVBUCAYVZmhSZeCHtMDG3vuCBR/dU3iLRg6KFmzgCA
	 6zwqmW7Yx3QRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A703C369D9
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 03:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174624479360.4875.14784642147262079281.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4c84d1ff7b11d45926f482a89ead030c4d7bb192dcb615b93a5c0754d34350bd
Date: Sat, 03 May 2025 03:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746244793
