Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DBE767EC
	for <ddprobe@lists.linux.dev>; Fri, 13 Jan 2023 08:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8990CC433EF
	for <ddprobe@lists.linux.dev>; Fri, 13 Jan 2023 08:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673599287;
	bh=cPkmnIp3LH5B2FA6PkUn+k8IG9XpkEDfmIIOaB+BQTM=;
	h=To:Subject:From:Date:From;
	b=YqRGdemd2M8MSNZnEYlR6Q+M4oF/VpEb/mm2qHWqb/0jhIvsOwOq8ZUlN6mpr/QXT
	 Juuj/DoIVjcYvaWU9xnDWw7kSnrnnNdryabcz23opxFHBMPI7bHlwLG/R6d87fIyhA
	 zAe1ZhVZrYcWBt+1qaUhH/Hwyue1+pOohCGp8UCY++2v7IFaGBgH8KufzmIms9kfRM
	 Ganjjt4L7AAPGJz9Fv9NB8elH8v4bg1KRU7Zxl7fT13aeX2QGbjIQjMniJkXteMWI/
	 zbxPA8kXLCMzy1a31uC0n9/4xpRxN5TSlLvweqM/hAkAGbszxxDVFFtXIVwp7k0XI0
	 T80o2GvKLFIfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6BE93C54EBE
	for <ddprobe@lists.linux.dev>; Fri, 13 Jan 2023 08:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167359928743.8308.16958628443247871527.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: df8e7f73894121b14500107ad67935c8b05845f89f308e66d16efeeacdf2eba2
Date: Fri, 13 Jan 2023 08:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673599287
