Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DECC17C2
	for <ddprobe@lists.linux.dev>; Thu, 14 Jul 2022 03:26:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657769212;
	h=To:Subject:From:Message-Id:Date;
	bh=h+Zppr1ffvgRy/nqznTCf/cuMGCBKmdOv5cv9qGrBVA=;
	b=d4CumVH7Dt+iQ6VY8TqIvd73Pt7upFjCYZTRx7le7P94NxncTk0nCRXbipgERivC
	TxdC3LhzW9c5dyvRHLN1rslyeN1/usFR/krrTfOAkleu26THLSHqgwsG7Vjvo9TMNCo
	z+OpOmZMBqU5QxXXOemjREVX7Oq9sAzjugdzNW+g=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657769212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=h+Zppr1ffvgRy/nqznTCf/cuMGCBKmdOv5cv9qGrBVA=;
	b=UF7gUElzc0dRqOpfPXYPu3Id/yxx5iIRJEi8EXhAmmkqeM6xQGSc53AS3gOCYN9B
	Ve5MATrusbIsuu0kXAAG3V+SRJURWhPWzubhHC5S+TVeu7nHbY0OeJXK1v9e+fk4kAy
	m5rMYtgOC9Z8kGANd0KD3mJoYYduswp8w2aZktrY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181fabeb9a3-82bdc83c-2ba3-4043-940f-5d9bcbab7cad-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 65d121a0bc1ab6d3356f627b4c619780dea07335ca95738507537a6362ed07ec
Date: Thu, 14 Jul 2022 03:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.14-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657769212
