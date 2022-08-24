Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D6787E
	for <ddprobe@lists.linux.dev>; Wed, 24 Aug 2022 07:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661327452;
	h=To:Subject:From:Message-Id:Date;
	bh=VKYs9O20Y8H7tNdKDipGHkgMeXjGp8tRyJcAYYDa4QE=;
	b=WJT4YaP4QRrL59ADtKDGuQRUmuYlSFqsI1gcGz7TREJIBD5k0cs6QOwEFoP43UdZ
	nYwjr5D1iULrRIar9/vFmyRHlCMr5v1uj4e5wsNwSPdJdA9qtFSr+TJdYrTbYeyxO+F
	zDsw2Z6jjp0CydVU5/NgpD2VmzUT9NVi/1mtEeNA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661327452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=VKYs9O20Y8H7tNdKDipGHkgMeXjGp8tRyJcAYYDa4QE=;
	b=QfVZn9JgrXyygxqILAyL1iS4aqnlilR3n8lBNr3kLwCsMlf86RnNhedTrGQYqK1Q
	+7bUBzEQCU0haeu36CJwVCf1FqdjH9R9K6V9mmFoIGl5H2aqv+pI7q7ft0kYELkzAD+
	JY3u6ODPGwBsI4pcyU5UR5ahvA8n6kWM6qYY+1Y8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182ced52981-93e81a4a-fa23-43d7-aa79-c11537497487-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 761949270fadd66f664f980a0857c6e4dec0bfac4e1c6fa5c566365f9946e192
Date: Wed, 24 Aug 2022 07:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.24-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661327452
