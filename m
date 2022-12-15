Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C426F2F33
	for <ddprobe@lists.linux.dev>; Thu, 15 Dec 2022 12:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7D3F8C433D2
	for <ddprobe@lists.linux.dev>; Thu, 15 Dec 2022 12:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671108087;
	bh=p8YF6prDk9ka80eiQUIgQ48f389qyMeqOf8DcVRZA3M=;
	h=To:Subject:From:Date:From;
	b=BGJ2lCJZK/YCAbqfxnJc+6NMAI5yjxfxqy7CjEQVVsT2tCTq7VyuXlRU0df65s/Xn
	 MBPRDeOdFTQ4qAnWs6JY8RAFKl5hHRmujXOehj7BRXzYN+0u5xEp05UyYXLsfOQEmT
	 tDvrcFgbaZTiL8OHz7Yq5o3tAUETwxSL4GqyFb91DXcbLS0hKabRmMcMDzwPHcjc3R
	 UXsuoQd18YN2526Xa3GQS7PeKBN6wVzNRe9in3M30CpD0sITa/yjnWzjytbD4Wt/7A
	 L7YY0QKgQeoP9VUWMOvbqdUi6KGVQ5IGVA6sUFeVdjNu6TS5w51zWr1NhBKXsbtdH/
	 7sd+zvkAlC5uA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64701C4332F
	for <ddprobe@lists.linux.dev>; Thu, 15 Dec 2022 12:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167110808740.3101.17821559773484286242.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d32f956e336e925c3f22e62c555eb5984ff60977d8199d0694100bd09ce4662f
Date: Thu, 15 Dec 2022 12:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671108087
