Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 533CFA3E
	for <ddprobe@lists.linux.dev>; Mon, 14 Feb 2022 19:29:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644866990;
	h=To:Subject:From:Message-Id:Date;
	bh=+hrWY22K5bLeqYw7SwSIpvHE+xu6PmRZHm/FbkCILzk=;
	b=dCz8FhfsOrYnqzH89Q/g3PXndqY9qgmolduoofm0rxhj2bwRHXt+Hiesvm21UZsL
	AGAwj4UDlRxdGOvpUn1Jbv9XFx9ilU3vQ5PDfBK5tTBJuprg2gsUSpam8QdAIgiWdK9
	LkBQ4iZm+/PDgIc2wmBfbDWLWO47WRflJKaoumIg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644866990;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=+hrWY22K5bLeqYw7SwSIpvHE+xu6PmRZHm/FbkCILzk=;
	b=cYoxKW4Zyyi5o6+gYVFWRHYsl0X0qdbIO16tPOOUiJ9OoFkwCdxXJNKFkbkfjuVL
	ketHpAvNauwtOiPSw91x3z9oAoGUagoKUAwNwgEaUwip9ezzU5erzq7FfDK4lRh6t+J
	zkfDrMg5Yfz83hYHeG9zsKfW5uLXWZev6mHGGvpM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017ef9b66e98-7ff260f0-f8e9-4693-9582-fc8bf001076a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8d982d104e263db32f732d26ece0ede3fa22fac8658f321933d3b7fdb02178c5
Date: Mon, 14 Feb 2022 19:29:49 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.14-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644866989
