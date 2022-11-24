Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BFFC51C05
	for <ddprobe@lists.linux.dev>; Thu, 24 Nov 2022 01:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6D717C433D6
	for <ddprobe@lists.linux.dev>; Thu, 24 Nov 2022 01:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669253454;
	bh=aqeogevbOk8RNn+bA1SqHTB3qPb0gfpCsRua/uJyk3M=;
	h=To:Subject:From:Date:From;
	b=WcaomQpfoFUWrD92UfIpKIzDuWTiR+fe16WinNxguexskyxjN5BuaJIJ8vTNwVbpi
	 21DUuG0fmMzaE0mLJZmbQg3MUkD/LpTOXpR8OrKaEHafPJ43ZQU+mwwdhGavwDWrDh
	 EL8nGA51UUQUHcDuEe3YCHeVZ7LxJCDLPubFrvFzyEe+9cB829QonOj4M1U99OjyO7
	 caIBi2xVRpLzlnjnUQwEpn2jHVehN+YbSGUSYqBpTEJ9fLuYtpxdEs5+ZcdOfkEg8E
	 UjTKkZPy+r0JPygH6tJubxdKayqObig0gVU/DrEfZ/Sy8qin4ManfuUzfP1ke/cBrt
	 iV/x6wSf2kXSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54062C4332F
	for <ddprobe@lists.linux.dev>; Thu, 24 Nov 2022 01:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166925345433.5348.10806696432179483349.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a239dc508d4fc0044462d92ede0aba53efc0e52f669212fdf722cf36a9f0d6c9
Date: Thu, 24 Nov 2022 01:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669253454
