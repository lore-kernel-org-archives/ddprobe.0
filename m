Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 041F2291E
	for <ddprobe@lists.linux.dev>; Wed, 13 Apr 2022 18:55:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649876158;
	h=To:Subject:From:Message-Id:Date;
	bh=C8ZifpkrRHXopMndS2547TC3A5+ayKY4uKt2YB8emmY=;
	b=QmghU3BS5qFH0bG6pwgpm8bUCDRN/oNuKyiM8pbO0PZzW9Y2X9RqVy1LuQd3vZlU
	j19/p3OBqNKPCONXowuV+l2hMkmTv5XCfNsUS2FQ+5o9UQ8B+K3GTSBnRk3r8+0e9vr
	xxxZhciJZfinxbqwMu9yYBxtS+5s4dogj/PirzVc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649876158;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=C8ZifpkrRHXopMndS2547TC3A5+ayKY4uKt2YB8emmY=;
	b=j8jwxOPDvPhRTsuIYA5Cij/0/DL7diTsVbjxzB3iENLAI1n6W9JccuftXntbIypj
	Y7jAqwpUYsSKNSRZTI4AUIS5WKMGE/yEz9P0wHacAv7cCGx/TsU0ZRm3yhL59eGvOy2
	aciq64oApLhF7DXpBbE+C9GKw5Rd1yFhADcouuKU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101802448477e-14ad1236-5ba9-4ba8-9580-a036f675da95-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3b3d3e944332cba1e4cfa3c4582496192adbd912f655816a584b089ce52c12e3
Date: Wed, 13 Apr 2022 18:55:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.13-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649876158
