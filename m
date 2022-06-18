Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 177AD7B
	for <ddprobe@lists.linux.dev>; Sat, 18 Jun 2022 03:55:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655524559;
	h=To:Subject:From:Message-Id:Date;
	bh=E0SM1rn3tXES9+pl6GBIOyPgP2jY6H7GNmXYTCshJjQ=;
	b=ZmdBJkCAsaxAaFwoNQ7CRwwyObPTv/Kp26/2/xqJrLmIT8Gn+MXWQ/b1KzTE/QlQ
	O+UFTkhN8upXAcJeRN1o703l6zM2att1pUJVw+ht1NtmuzEfPyYg3eXJ98mXz5Ir9bs
	MK8pBaNkWGpo36QSS+Lh5IRuFsL+2rtmcOwDkq1Q=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655524559;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=E0SM1rn3tXES9+pl6GBIOyPgP2jY6H7GNmXYTCshJjQ=;
	b=CXN/B8RmAXHTuUBIe/1VtyeJ4u8spVfZmzdwXFisYLrE1wJQlDzak5ruPsPQ7PQu
	kKGUCtWGE7lHuTxkqnpdQXzfy4/y7J+1lAIVRCxjiUBl3JyJWiyWcu5shuLzWQ+oSTP
	xA34xQTbpUecpp6E/u0G51znUumKxpKzSFum83zs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018174f409a1-75d2508a-77fd-4b11-9baa-0f42f33fecfd-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0f4c4fbc2c3dd7f8f40ff5c861529418026976fa644bfb5d5970c3dc0b6c1449
Date: Sat, 18 Jun 2022 03:55:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.18-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655524559
