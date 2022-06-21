Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E2F59EC1
	for <ddprobe@lists.linux.dev>; Tue, 21 Jun 2022 11:51:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655812319;
	h=To:Subject:From:Message-Id:Date;
	bh=h6pMp6mBjUdFwtNor5di0Mm8E3VfZIaGmhaftbMrJuA=;
	b=Dtbhs1abDSfyq0wHzIgUWRWj0JY7UjlP5MQrE5xMvrYVjKbKXz0rxh0U62KtmyTm
	HxdizKxt/OXeI59oQpbnQPGyp+nB4WASoBN/Kjzc+60Bpy2sxXgMbJpKbeH8rwvqms8
	OdJHmbtsrLSY/l5+loCD4fH019jnKzRSZhHCmuqU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655812319;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=h6pMp6mBjUdFwtNor5di0Mm8E3VfZIaGmhaftbMrJuA=;
	b=PleIe9Mp5O83o6DeMtY8rO9qsMC/nfCSZ+jOToIajBzy55lilu5jfG/Ysp74VeuU
	uoP4stcUAvJuw7HSUV8RwmFKU2xlVeGS++dNw6k/82AeUADTiq984OjOrkOMF2MgNG+
	JQxeZ2fCnUt1sMkRkxVh8GHtm+P4NV9cdEcah0ZQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181861ae7e8-4eceaf28-3c88-4639-b2a6-cfa1b9de7fbd-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 82e8e0a51d9e10318d7d3efe32a1f05bce6d2a1186e71b1614ec8df9aa647521
Date: Tue, 21 Jun 2022 11:51:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.21-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655812319
