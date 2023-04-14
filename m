Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 458FB7C
	for <ddprobe@lists.linux.dev>; Fri, 14 Apr 2023 17:33:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E7AEAC433D2
	for <ddprobe@lists.linux.dev>; Fri, 14 Apr 2023 17:33:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681493585;
	bh=0zFwou5tcNhl2cD7KeJ1/lSqlQ8ugfozYnDFHHn0Skk=;
	h=To:Subject:From:Date:From;
	b=ZalpXdTyuh7NdB++uLfT9Vz53ZmZ/UmK7bziKYLNs+6O0ApmmAkbN8lwVXzPZuQ8E
	 GzVgoXNRplpnU4r4kT8clNAROigK3GFqCeFYzdEGN41qmVyf920cjtgy7/bJSMBB4Z
	 ifhc9Kh79YX2rrAky7pwnclHssNHBit1bzEPq0YJJsZ/oCZFx3xm7N694xtteHYSgR
	 jfb7F1jSeaBAkitrkaelFyryh0i8Qu+GJA4gOX6BbO7lUW9B0oHtlWjIiFmJ9m35iv
	 CWPJlEgcPEWRZ8ptfZPmpUisAAg/aQvH0y+TRnRAbVEkr8L4T2OI+Zhjtb8UwMbda9
	 sCskiPgmXR6rg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CABD1C77B71
	for <ddprobe@lists.linux.dev>; Fri, 14 Apr 2023 17:33:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168149358578.6312.4665879053139152439.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c12704a8a36d4b7397beb1d6724b569965b312b574ffa893487c15dba374685b
Date: Fri, 14 Apr 2023 17:33:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681493585
