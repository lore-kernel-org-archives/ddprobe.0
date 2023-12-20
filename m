Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20C05219EE
	for <ddprobe@lists.linux.dev>; Wed, 20 Dec 2023 11:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JLmMkxyx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8AC70C433C8
	for <ddprobe@lists.linux.dev>; Wed, 20 Dec 2023 11:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703072896;
	bh=mJqiHO+Lhr0ib++xqgE3d6vnt6bcN3VyWdD2iybPUcQ=;
	h=To:Subject:From:Date:From;
	b=JLmMkxyxsiWuIsYdk782dbRRldwvayx7PEuUQlrUCJ7zECp0lRRFWpFGdEq4r3PqB
	 2Tr5cXifm/H0me7/yknhNZOgSp2JfeKQOYTwFHkk74U4TfvweNy/TfMaDRZlnf7rDM
	 PcW2eRlQ892fdkPFm+ucjcdfh27Agxvgjlm8sdwx2OXJtYtGxoIXUSx+5VeDmpsp+s
	 lZVb0Y+TDo/lOEmtiqSKQxehIpDy8bLW8Cb4FXtNYBLTJX15zLJwCIHcprSNIVzCFl
	 sHJFwkfm0yTNjaZapcFfJ5PRoCAWME6rtqpxXi5LXNtry/07VIKfgAxRE7vwLm45EK
	 I4HyCo7JzpkZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6CB20C3DA6E
	for <ddprobe@lists.linux.dev>; Wed, 20 Dec 2023 11:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170307289643.11418.7458509466633599218.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6e92432a964c616d3fb283cee323cbb157b2f69135fa35abc484bdaeb4ed4e60
Date: Wed, 20 Dec 2023 11:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1703072896
