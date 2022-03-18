Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 77BBC2F2D
	for <ddprobe@lists.linux.dev>; Fri, 18 Mar 2022 08:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647592884;
	h=To:Subject:From:Message-Id:Date;
	bh=WtGyB0KkiXb4OGKEdBekM59qNJ1jpRb0GvUMln+8aII=;
	b=O107Ega8rhTGb8wUmf7xQ+d89jhzxB60QmQZ9JpnJlQspSQuRqzGVfLUXTn3QKvQ
	m26uD2RjrhIjzkgPSZxK6ZKDS9Vd1+WAPPdp3aCp+RrUsqOWwP3R0VgeoOTK4+FLLJO
	S5SZOK6eYez8NmX6VKlc+NetkobUWr7aQM/7gG+4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647592884;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=WtGyB0KkiXb4OGKEdBekM59qNJ1jpRb0GvUMln+8aII=;
	b=jz9WdXSt+HE1AOTD/HHkwQMxR59L5cvaZEoIG12TTVrbYR27Z+Aw3Granbig5au/
	jdnQNSt2OAbJomswCT23I2AymzIWMTXGqjn90QfHO1EFPjeN0c0k5jBPGEudVzqnyYm
	59gQChUP+6roYmLt+baWvgm3pFJ6/ocvnivnOmHo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f9c304a15-b55c2e33-da48-4698-8d8d-2002a967ef5f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 694fa62ed822e5539611c0d62fe8d2c6413c632ead0cb1302deb30c1e0ed4258
Date: Fri, 18 Mar 2022 08:41:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.18-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647592884
