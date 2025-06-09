Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 250E6482EB
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 16:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749486594; cv=none; b=nP9pFyHiarCIy0Q+oHopEmYptTcpOfXun8uR77fVJFTio+m5daRbTEwQ5OLf0IOhG+efZzAJDh09yw3etEepsDAOcVAa0P7iWNLB8PLsVZaOFiM3Z0a+4UlYI8if4rwEy7scmEEQdDNN7LbKGWcfLKY625rkK8+6//bSaRaUP+E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749486594; c=relaxed/simple;
	bh=IaA9Cghlf6/BLbK7N1OdvriZtJ0rWzfK5kGP2nfWaSk=;
	h=To:Subject:From:Message-Id:Date; b=DeTF6uBOZctNTL73PTrNhzs11XUevhrHSzHqE/45Qu4yqL60gnNCaKYh1zfj6ViN7pLl5ceRv9RsCSHva14x+zAKZXpPtrOL11rowjR9KqPzO2VklSpkOHTsK00ph9eK5+nYSKsVkfACkvc5C448QJC7tb95Y5YRRRcYJSucJEo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Jog4Wx3j; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Jog4Wx3j"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0B1CC4CEEB
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 16:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749486593;
	bh=IaA9Cghlf6/BLbK7N1OdvriZtJ0rWzfK5kGP2nfWaSk=;
	h=To:Subject:From:Date:From;
	b=Jog4Wx3jKoo5ePHCPUeXLDnvyWE9EY2ClYLvnul+PBDHAOK/sZfMGmk+3uFd8vRxo
	 UtDTP3hHAOnYknHIAJh5UsxoydpBB+ID0R0hir6dCYQxVQu7YBFtZDWRf0blIjsnMB
	 4hCGMTuuC1OAzG/D75WkJ5Vxr0t6kSLwxXUQOZgD17tjKR0uA0Sgam22Wj7TJkjmAl
	 ed+xPKw5WBBGb6DvxoaSR29EJ+nyal3997GjHLP14HMBIgthiUgMZZ+t0zYIYjcR6Y
	 BzJ5MOE8JHiVWGrmUWkvgJtOp2vyu4G46QdIn6aBLOTCZjq/nk/EgpHjSDIKBP+kFq
	 d8XZWpw081VXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FB61C5B552
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 16:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174948659357.29707.4489315213947424179.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 52126df4056f580443553411e48472ea5cdd8676afc797f1040b6ca57feea6e5
Date: Mon, 09 Jun 2025 16:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749486593
