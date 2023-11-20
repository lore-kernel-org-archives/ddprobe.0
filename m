Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D86C442D
	for <ddprobe@lists.linux.dev>; Mon, 20 Nov 2023 06:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UbkycYll"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 86516C433C8
	for <ddprobe@lists.linux.dev>; Mon, 20 Nov 2023 06:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700461696;
	bh=/V3XCccjxvh7LEiAmXcikFFQSuDDMe/GYHbGuL/H3Qc=;
	h=To:Subject:From:Date:From;
	b=UbkycYllCEjmUlomRdZxReL8mufNcYkENP4fbxyBY8eid8NZRm+gPXiLHXR9lyug6
	 EglBX3Xn3q2uPVAAKrDF9fm6faqxLzeR1S7judDOxL87LWzkNLTAiWRkBwCYhEoVPk
	 /q1W/bNuemifl8BLbaxU+dxSRulCykGnrpa0bIgUzZn6pgrT5DFrHOVhG8MOsy0Kr7
	 Eu66Uf52+0XnhaByFviH/OalJuZgiWhrnFvPepGV0cRZs1BiIc+ZBhrOhiOE/ACccg
	 Apt6OjOoRQj6ktPttSL8+kI55WzrIHM+Obx0JObhOZ6xgWrsD6AYzYmQjgkWW17E4+
	 jySagtMhCj+MQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 685E5C197A0
	for <ddprobe@lists.linux.dev>; Mon, 20 Nov 2023 06:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170046169640.24835.9303002040398399855.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ccba4880c08a1a753aab581fe70ec88f9bb1ff129db08fb631f21a9dc6f4002
Date: Mon, 20 Nov 2023 06:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1700461696
