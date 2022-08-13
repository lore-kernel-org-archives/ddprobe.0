Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 76943639
	for <ddprobe@lists.linux.dev>; Sat, 13 Aug 2022 03:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660362652;
	h=To:Subject:From:Message-Id:Date;
	bh=KZIWMLWc73QRXcPBNgRJB5DB1iBT6olt/Cg6+v3OSGg=;
	b=YaFRvc8xP3sbSfKYAfs9MG8GNrY9dgJvUh4j7gpKq4IrTQSfdDFj2B6AuCZQFQ3l
	VY4xttjc3wzXekTTkzrqLcUHv8uC9FHnKgzsDwjhQjzl3lrI1v8zWgsOIXDYc75IdcZ
	gtcbUohoZZseWhJjz/ItlmmSci8iwbdJePm93NQI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660362652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=KZIWMLWc73QRXcPBNgRJB5DB1iBT6olt/Cg6+v3OSGg=;
	b=S8tFlMyWQNzrJVRw0SlUVbiK49zPkA3ifu8ZCzMApIC1D4Hq/Y0eTjKdxQRYAQgL
	hWv0g08mwkfmth3iB5YLZfSK1wF7bhVBUGWZOcgIjprRlg3EW/PeAYjL/8skiD6BKJG
	ZKCXX/KVixc8LORz9qc5gqYLiFQnWJVW4cvfst8w=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018295537b81-3fdb4fef-d50d-48a9-9223-de089a3d1699-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fe6d098f7519e7b0b8b4d8ab0e99c952746cecb20bae552f9dd066cac3d4a1a4
Date: Sat, 13 Aug 2022 03:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.13-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660362652
