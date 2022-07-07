Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 177297C
	for <ddprobe@lists.linux.dev>; Thu,  7 Jul 2022 04:46:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657169213;
	h=To:Subject:From:Message-Id:Date;
	bh=ZS7+mQs7WmVjCxqDw1f7FtqbQjMUzgtlMSI6h930Ze0=;
	b=bidF3N+rb/sn/uCRqN9zCfdx+aFok43UVLk1Fu+QOGL/6lKjeLWHUHSXz1G1BmX/
	EnwnbilnjehwC/35bC+ZtTPS1gHsYKNcDFtHeBoOIRqi687ihHKOVTHWQ667ku57ZOW
	9vNI7oxuaDCjB78QlXPIxEKPAqQH/jkcwlNQmSSg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657169213;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ZS7+mQs7WmVjCxqDw1f7FtqbQjMUzgtlMSI6h930Ze0=;
	b=fpP7Oi9cVnK0MA9FkUS06Zi5jBp72abkETh4Ta1Ou0Jtpc4iXkmAe+vBdrqKAyxE
	1TIuWcQz0/LZSHOmDWYCGvS5k9S8lXIeXkqmjEFJ0g6nFNhtChMESONaDgWlHZf5sDL
	zgj5YHtxWiWeNYRSK8iP8sr0d9kcGTIDv6eIfxg0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181d6fb778f-1ef3c266-b944-41aa-8521-f72e8888594c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fff947c4331f02a72e7ce267dbe5c4ee69e1740ed1c597646a4c695527cb8637
Date: Thu, 7 Jul 2022 04:46:53 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.07-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657169212
