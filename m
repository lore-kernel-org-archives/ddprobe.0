Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D142B364
	for <ddprobe@lists.linux.dev>; Thu, 10 Nov 2022 01:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7F366C433C1
	for <ddprobe@lists.linux.dev>; Thu, 10 Nov 2022 01:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668044454;
	bh=gc9JFWwjWSUpBVYwnAec/n9rFM2WuukjJ517sCaLKOI=;
	h=To:Subject:From:Date:From;
	b=R4s83EcRMZ/SkoErLHISuMe9nRMacS4ABSb+Z7CxC8DnExRdwzkZ9tE/Y0eGJZuij
	 hi7pJb4WAPUU+20oXvnsw5v72DEIXewWGx3hwite4D3ywpjX0znDv9PsEtRNPmjjed
	 fo9ujq+Mq0/mboGqS9CCbByHmk87Tqap3couFxVUydBt7EXd43CWFKDr+v1UxTsvFo
	 V+WwVHWqMPub991CxqbjfBZnvkaYsx5tq8kDqZ+naP7A/dYZI0JyVKZ+HL8NlTqIWj
	 +bn+ZUK6oj/czrjXVYzLCp6z4EocoXt7hd4/n6au7+Dugptclvz+Is0woEfFFtMdm3
	 NxaGIUQkBbTNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 57DD9C4332F
	for <ddprobe@lists.linux.dev>; Thu, 10 Nov 2022 01:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166804445435.2195.14328191826734852010.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 267633f34622f60648bb0261822fd41564a64b04701e475646c685f95def6727
Date: Thu, 10 Nov 2022 01:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668044454
