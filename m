Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E57233D6
	for <ddprobe@lists.linux.dev>; Fri, 15 Apr 2022 19:56:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650052618;
	h=To:Subject:From:Message-Id:Date;
	bh=xieHZf7H9GKkCdMhjzndH3xC3cjPOg0ZAlFhaL6q5fs=;
	b=Fw719PlfJhXpjQUb9P/zBXKUIzrkHKjm7ngj6+ue4tyjhZZkPsOG2ZbGYs1xwjyJ
	Met/OZfGliZ3Sp+E9GXoFKwY7Z98JeFxzfzSQrihdjgr/HLNBFuVIDVfFzffo9obFiP
	Nzcd/ZiSeXSAJc3R5g4+zv0aV8Q7N49so0gat+7o=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650052618;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=xieHZf7H9GKkCdMhjzndH3xC3cjPOg0ZAlFhaL6q5fs=;
	b=SJ2+IQnkrq78go4fVlTY8BhEsIU37gMEoE5ZvGOVwC686URgsr3Z4GYlf+CbPyUQ
	LimcIjdwxkFSek6e4wIEh7OSY+ekQhYZ7lTqP1z8ABbuP9ij+dj9056eTcu2c4b61EH
	6/0/J471uRr/tLg5eQ5Eu9++5TkyRw0sVhscPDEk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101802eccd846-15ec4cbe-7e22-428f-8387-4eee93dccc1f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ed8811c9f063472478b4471124008dc2bdd28bee2578eb0855301a78c6a39e53
Date: Fri, 15 Apr 2022 19:56:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.15-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650052618
