Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B9B8715A6
	for <ddprobe@lists.linux.dev>; Sun,  4 Dec 2022 02:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7B832C433C1
	for <ddprobe@lists.linux.dev>; Sun,  4 Dec 2022 02:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670121054;
	bh=Qkt42eCtC/nW9LjM+uYyqbOqO1AibHS/1LYoDGGH+BQ=;
	h=To:Subject:From:Date:From;
	b=bDTKSfuOOBpHW6zTKfSNMUsKXzvPc0edhhhMftxO1meuDB/eHjA9wB6+3MUFgtL25
	 1VCvcfxL+68dEsjIxdTrUK2Uiy3icWKS+3VM744ykJ5ZQV43r2WUMfPyliLFJJO3Zd
	 Jj3iXXa86b/W0sr/7OLCQ33dhH+S0j3ejWMYRkHXnnNBh/sH51eEFJQHs2AJtFjnNc
	 Vm3zPPZgewBw30TlCfeznWFJStcGNpkmZuuHctODcDgEgh4vbbMdAbYC6qoFesmmLT
	 NtBcF0yGF7AewfNSVhWp/zaVSFRNACF91dI1wByj+l/ugCMxhBDsir5vM67kguHcRz
	 FtJaI7UhoPz0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 631CCC352A1
	for <ddprobe@lists.linux.dev>; Sun,  4 Dec 2022 02:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167012105436.6222.10284384278857182554.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d11b61545b7ca3877084a16d466bb9be47d61d188d3cc486247025eb489bbb4a
Date: Sun, 04 Dec 2022 02:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670121054
