Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E19A136A
	for <ddprobe@lists.linux.dev>; Sat,  4 Jun 2022 12:25:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654345559;
	h=To:Subject:From:Message-Id:Date;
	bh=GX7RnaKh/iJlEqGkyYON3sDY2frtIgnP9voPV2CagHU=;
	b=kUJRepHVQzttp7SCGPedPJzRSK7CyVf2tekG2hurUzotESYj5XdRRqVZxVPg/+F/
	QQ6YOWedc/c1p4N1A+2TKtf3fxO/W8b1akYueiP+2uKqyAjD7RRhn7/YBE+4LIloGbJ
	Q/aS1ScL+fSxcx8n2xS1/PhLlrACaU9GsBByFWos=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654345559;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=GX7RnaKh/iJlEqGkyYON3sDY2frtIgnP9voPV2CagHU=;
	b=VcrUgMaFIKWQp0rp8AfQb7KTd9QXSQU0yTcOJqussAnF+yh/2UsYPQDmRPnNTn5f
	qOpl5jGqCSiOb00tNrxMOd06kz7gM5ewQbbvzpKEfCpsrDGNrYFZ7C8JwFtKWTSAtxP
	8iqc3aFTrN3KhgbjQ7Bgb151KYvARQHXebh91dlE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101812eadecea-db22aa4a-2e26-4e03-a268-f9a4d4ae861f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6da13862b8db3e5c6b22a1606e641a8a5e05fd608208698ee44241e9585fdacd
Date: Sat, 4 Jun 2022 12:25:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.04-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654345559
