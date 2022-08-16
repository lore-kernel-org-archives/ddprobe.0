Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DBB516AAE
	for <ddprobe@lists.linux.dev>; Tue, 16 Aug 2022 18:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660675853;
	h=To:Subject:From:Message-Id:Date;
	bh=BOCk6h/KqvTDokc+a3lVJjKjVtlO3JVPb6kreNbAlRw=;
	b=XQbE4T2AVkfhahNZV3AtpA3YhqOcKfIRsAqYojTSnnm0q1p0X9iwWXh10D8BzrIo
	YjwqjbF1/VMgHvLMn31Ne8qWxNEAslhfDQmq2ipIdKSundLwAKsyYNHjXKAkAEKFQjr
	reVatSlzHjW5Q/vdJSFJVrX79odiHootIVZnSQyE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660675853;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=BOCk6h/KqvTDokc+a3lVJjKjVtlO3JVPb6kreNbAlRw=;
	b=d2VCBf+wAvhtoKwWm7clDGFtJuH5OcllR7/achD3rlbikx2xBQQe5o2+nkUwhbEc
	4g+jDBR0SomWa2qmb9VSOBNfW+2ay643GwzOyYAyCyBPic0l0dtVm8YLTqIrNpBwvOm
	3dcOmJxJjRYydg4LCYPK/7bHjiNlOv+FEeE4rmdg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182a7fe8a70-702e9bef-e481-4318-b772-20f31c4bbf53-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ffe5e32374892069882cb35376c04b993ee6077e1a4058b505c1a545bc69ea9c
Date: Tue, 16 Aug 2022 18:50:53 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.16-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660675852
