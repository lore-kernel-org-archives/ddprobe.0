Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D0D73232
	for <ddprobe@lists.linux.dev>; Sat, 28 Jan 2023 11:53:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D538EC433EF
	for <ddprobe@lists.linux.dev>; Sat, 28 Jan 2023 11:53:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674906785;
	bh=hispRwBCDu5x9ZRdrkal4wCoVp8hTGY09z2BP4NXYKU=;
	h=To:Subject:From:Date:From;
	b=BNEBtRIpnED3XtWI5+egF4ZLswla0Qms22isCoSqEqiUZpXX6UWWArYEGpGHhSYlx
	 TCG8Obc5W1cH+C8ArAFt2b6jc1n6Nu6Db+LT3mH/VvuLdlJkl8ITt4W+G0YHxCeOAV
	 AzPXm+kOn/tS0Z52EM45p8Lu63hnMeCDd5PgQMUjxxXW4pVaewfeA/aCob1VI7VZJL
	 1LvWhVIXsILVYKejSLwgKpOMU2LNfk33yxVfuOTfwiSDk5HfZ8Vn4Ix4NYY3QqM0He
	 kn7U5n97GIhuHBFpKl1kS+pYGIcR3DUa2axrRiJ/aPqD72i75GBiwgfTztJHFNh0bJ
	 exc9CI81dnXJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA133C27C76
	for <ddprobe@lists.linux.dev>; Sat, 28 Jan 2023 11:53:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167490678572.946.18058225204459989118.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e8b4b754b84bd1a9eeb1cbbc21c5ef5bb3990ec2903485170dc605b3dd20d314
Date: Sat, 28 Jan 2023 11:53:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674906785
