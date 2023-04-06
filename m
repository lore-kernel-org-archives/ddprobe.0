Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 340AF320B
	for <ddprobe@lists.linux.dev>; Thu,  6 Apr 2023 16:48:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1D9CC433EF
	for <ddprobe@lists.linux.dev>; Thu,  6 Apr 2023 16:48:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680799685;
	bh=Dy2BIkVyS6ljrLt3lwEHmVQ5DD0A8zxyjZV8YrsAYVs=;
	h=To:Subject:From:Date:From;
	b=XncpH41+CBisrst2iT/BDYo8avhs8VEdETt2fj/uQg8omKHEXROFR3Bc1+AW5yCxc
	 mCAjaAGzn28u1OM/vwCZ05VsmAaxttyOnmzAbkvcB0hklBaLqw0pc5ABv2hfYwjDYs
	 Ged2QVf1gZIeDC0XjxDDWR1U/NaKjhRRLBJISW6fZ+GVy3BuhfrZctJa9nQ88oUbXl
	 cROOteaDeFLJycg/w+noUbeLJUqnpTrQi6+phoAd9Mkc+ReEVI068Rg8sOh2OkUiUd
	 +j0JK+sPW+BnyqQ/SHmHlFJ/3TXiVfGeNySvyme/oejzyLWURTXW5qtSj3zYc+QLRi
	 /DFJR+6Zoeg0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4236C7618D
	for <ddprobe@lists.linux.dev>; Thu,  6 Apr 2023 16:48:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168079968573.21930.5443379255865792373.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9fe164261f29396708259a93b27614c11dd9189e710b31ad76f25eb4d015d01f
Date: Thu, 06 Apr 2023 16:48:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680799685
