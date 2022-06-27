Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 00B4920E8
	for <ddprobe@lists.linux.dev>; Mon, 27 Jun 2022 03:06:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656299212;
	h=To:Subject:From:Message-Id:Date;
	bh=D761Xrg1HhtYD/SHSd7TVD8E9MnQlm4yWnYBKX2XqBY=;
	b=dMSjcDH2LkbAt0F6PgNGT0WDaNjSr5CKkPX2+pVVQ89Dk39QmszTEMx2FBwoxzNk
	7pUy0U+VUfctcp9w698Ed75k68yqhIXE0176IT6TwKVt5n21G8r9adukRU1kIbCn30g
	9MiDAt7CSPN4CMQFa6VxLw47YR9Zia8UUG1/Dymc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656299212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=D761Xrg1HhtYD/SHSd7TVD8E9MnQlm4yWnYBKX2XqBY=;
	b=BZe2qk69h2WPaXrESzLX9bNs9ElNMfWHBV29nGuH/FrfSMRdGc+0zc+gyrx8dJPg
	sgSeSntQOff4DhbRQhVl6XWZadWWY+gVvHgrcBllmTJBrLjQ/Fv/OgwUeJ27NAF4SU9
	0AYt+RLOWNHiSPQX2l8L0LxivE+GUv+G+0cyDAJs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181a3204e1e-5a05a427-e2af-4e10-a91a-9aa06fe8baa8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 70bde4436bda738278394e853db1121e2fb44adaef6dc4740d041af9759d3174
Date: Mon, 27 Jun 2022 03:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.27-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656299212
