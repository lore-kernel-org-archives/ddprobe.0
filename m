Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 71F3B4C63
	for <ddprobe@lists.linux.dev>; Mon, 28 Feb 2022 02:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646014584;
	h=To:Subject:From:Message-Id:Date;
	bh=BgQp3oDqEULULAvePWdn+I3/PCELRd6qL2/jdvkGAqI=;
	b=X+Djo3qoPd+WknQ8uHUAay3BJ5xmBchBLJerEDItqSg0NVGcL0fwtXqbP/xc+PGW
	juUsCUuUM1J/DMJt0X6FsgaAmCq1drh0taGOFkXz3yieONjbKz3ZGo1U7DULxMRBSui
	PgCR92ZM1fwQFHvFiv5Dg/7hicLu/ojwBQYp4lAs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646014584;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=BgQp3oDqEULULAvePWdn+I3/PCELRd6qL2/jdvkGAqI=;
	b=HsIKvpyGTfwYlOveTaFBn15hm9vC9mGv637IhgQ3yRjRb1vyjDpxnwCuY9KTPS/X
	QjeRIdF76k5wKzYrwvNP48njSQ6haeCyvhBxyjMquHvZ0oJ45+1+P0mvw2vwx9PZ7Up
	Xg2A5hV1ibYOtPVY2yNmyQ3SF1iJYqmd4D33zIKU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f3e1d579c-4a3945fd-f8b7-4b3f-be80-b6346386c39a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 84ddaecba76c6345e056f4f389b4e6450dddcc7704a62ffe7d32b02abf0bd345
Date: Mon, 28 Feb 2022 02:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.28-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646014584
