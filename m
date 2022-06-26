Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4126D3236
	for <ddprobe@lists.linux.dev>; Sun, 26 Jun 2022 22:56:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656284212;
	h=To:Subject:From:Message-Id:Date;
	bh=G67E6USrH7mlKPv6HxEBnWJJQWNAf8OBpHfP8lfEjno=;
	b=g85MAIxbMzGAVEScPKCM8yEj7EgXeh5RZCQe3gOszgPDspJJxrJGIQ7D3UELBXIJ
	QKeu8ZqkxjI6UwYMVLsQLC26BMZCAfswaRjeBSMktSHywOx4qHsIYiIZ4Am5Jw+UMYD
	jNKBI8hSxZ/dDxnNVuSJ0otw8/3md9Z1tePX4L4k=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656284212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=G67E6USrH7mlKPv6HxEBnWJJQWNAf8OBpHfP8lfEjno=;
	b=XKU+H4jSLgsjJY17IgFa5VfiEsmox1PRZnRbq8d8H0+r2SwfKBd0B83c+8hgzEnc
	AFVywqhofQ0zTiZM64zHkq+R1gZc1Ol7H/znX1kJyW35++Uc1f8Nhk3z4/2srrok3CX
	U0I+FhbuB89djebKYODE5doPdLwaByO1ZKprJQt4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181a23b6cb7-70923861-4c64-4a9f-9e1c-ea07470e547f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 26392017ae530966fe42b1ae8ab4b704894e3bcb7a05faec04ae5f01d0fb2fc2
Date: Sun, 26 Jun 2022 22:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.26-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656284212
