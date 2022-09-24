Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B2D5A190
	for <ddprobe@lists.linux.dev>; Sat, 24 Sep 2022 10:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 69180C433D6
	for <ddprobe@lists.linux.dev>; Sat, 24 Sep 2022 10:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664016053;
	bh=FodZH6cBDzzoBBUmwAHk/Y4wV+xHbVEkZ7QrUWuQCGk=;
	h=To:Subject:From:Date:From;
	b=jJtvx5KAQTfT/fwEI4YsCP/rk8dYPppYLBIQYhU5vnrsnBOGkH9NYosMMhIFJOmIU
	 kTyYluP3TzlXvszJDgaI/Fyds6yD843liP8j6uaTRM5g+eqUH5CDBnCfTjAHfWKRo+
	 gZnreH94+diSw0ir7QBOVQfll2+h/PE1XFOOqqEElsO2Zs+mX2qTO1uhmfw9YHGvcT
	 frY2AXe8lJshBCsm+1Tjaa3aWnBxJSFnO7Wnud6SN6fq2vbcqIsMyg4zPnahFjuN2C
	 ipJteOy+cFSLC2M0N02ft8eakPGIYVGtPlSRfD/l2V3bXSbR2hRIocqsKVKlTni5R/
	 ZPBHRv7YV3iag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5169CC32771
	for <ddprobe@lists.linux.dev>; Sat, 24 Sep 2022 10:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166401605332.24963.8044097291775615167.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 21916ee44d5821411fc268c7d56d70c7f571dedcaad956262df1241d558c7d6f
Date: Sat, 24 Sep 2022 10:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664016053
