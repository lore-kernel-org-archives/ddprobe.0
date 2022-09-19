Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC8BF6AA2
	for <ddprobe@lists.linux.dev>; Mon, 19 Sep 2022 17:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7A834C433C1
	for <ddprobe@lists.linux.dev>; Mon, 19 Sep 2022 17:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663609853;
	bh=pA5QaSif70jZCXv2+FR6Az2eLBJKmkS7s/vWvKr3Qog=;
	h=To:Subject:From:Date:From;
	b=RowLMH/GqkNSHGFZ9dtvmEsZEhEdRpYz1p8mdhaj5LAO6b1l90UBjRFaUdTW8udAn
	 vhF3Yl/N88gn86QIgkmF/4I1cJ8VhQ8f9tAgOPRE+gOCcM273fJ3BNzL95fcrxgz8p
	 Ffc4HaE+z7PdwR9zOB7uLmC4Wr7yrO2xSxkR5tyVgU6j+ZutvCUGTAK0iGX4zihfKz
	 70d1Rvxg0nTzDbJvhzD99QML1Byx37YLzEKraiD2u5L1I8JS2yB5c8s7uJ117s/uWD
	 Z+teN38ndA/l/ZUtqQcAGWFXzX0h+YMS8LJxAjpV1glOfIW0AMyatkjKS/eXcuaPGr
	 UXvue4cTWMhKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 561F0C54EE9
	for <ddprobe@lists.linux.dev>; Mon, 19 Sep 2022 17:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166360985334.5714.6173484430190811301.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c295801b1dc819d7dad8e0c40732aa5258c86a0154d2761b3fcb99557a65d1c6
Date: Mon, 19 Sep 2022 17:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663609853
