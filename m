Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07FF72595
	for <ddprobe@lists.linux.dev>; Sat, 13 Aug 2022 21:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660426253;
	h=To:Subject:From:Message-Id:Date;
	bh=ZYIJyoat39iSxzDqWKbdmDpvHEh2/m7CULY3EssgP+E=;
	b=jbZpAKint0bvXFDP29aWL5ZoSm0wwN152CMYY5lhSP9KsZvlqpyvqO87ZjH2fUUL
	vIXb7BRljaO1ooygK4WmUABq/zW3hNPYPXPnzElM1KxEDxUJl1/TEpY/J1lxQ+3mAAB
	0s3sgpRZKdVSOO4FwP+ratEnFKeFMQ9Ole/Peuj0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660426253;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ZYIJyoat39iSxzDqWKbdmDpvHEh2/m7CULY3EssgP+E=;
	b=NLlxG3ke88zPsi8KiYKfDCHHhjJ+af+CVxXwTPYyXgi+pNcWTItQQEMb5trz58Uu
	M76Tx5gpzzX0dVrmIVu/rRJ5VjB5cY7rmX+sPalQ7nQe01dZCvrl9YyNQEiFlKinpA9
	6njacwbNSJJYhPx+jbr/lz+9SzQOPkB/3acWnME4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182991df15f-bb5fdd60-0adc-47df-b329-82e44a58089f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b3242728505975e39bd1446a349c04e55ecbaa55f8cc2d606af2895df5992c68
Date: Sat, 13 Aug 2022 21:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.13-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660426252
