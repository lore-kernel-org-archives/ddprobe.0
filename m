Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B8ACC33D9
	for <ddprobe@lists.linux.dev>; Sun,  2 Oct 2022 13:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6B4D1C433D6
	for <ddprobe@lists.linux.dev>; Sun,  2 Oct 2022 13:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664718653;
	bh=StDv/f7FH1JZWK5dSNqVswqEJi6/Jr9zgJi5Bne6bOI=;
	h=To:Subject:From:Date:From;
	b=thullDFv/UFadNR9vhio4Ll30bO4AtyGYVxCoM7rsf5I1Iqx4jFYd2BVjnrpZGeuJ
	 dAMNrt9R0MPWR3qz5FaVjYzSZqmJvq4Lih8BGXwi4AF9EhpEo/bQJTedY6QAvDh29M
	 Cl62rvo0FooonUi7qMKh0XlsG8tqsKfMnSLYgaWS/CJ3aC+5oSQi27RPy0gK3O7/cp
	 9RlzthHtPObEz2Jhdh5ny/iK777lJldLSVYCzlFmWNa3RsOQEr3EZ+2tCWUZdIUk9j
	 0bNDbMUOpvfaobhyHFRt1Mi5zG14rILLu4rErAmFzPRf6eHHNI0nCkhIUkSieuxx5G
	 /t4bQgBeA9K1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52047C433FE
	for <ddprobe@lists.linux.dev>; Sun,  2 Oct 2022 13:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166471865332.12225.16364533944531929611.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8647bdbe899f0c2ed0a1ab742a55b3205de1d75e2af13db08fbf3ac5928f8a3a
Date: Sun, 02 Oct 2022 13:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664718653
