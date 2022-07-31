Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44F9D5C8B
	for <ddprobe@lists.linux.dev>; Sun, 31 Jul 2022 20:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659300052;
	h=To:Subject:From:Message-Id:Date;
	bh=CjnuoaGqoB2QSPN8HuS8sFWJGDQd5VFOs+8JOX8bCGA=;
	b=L4g86J5bGHxal07LrhQMHgceDXBDqVtprVrYr8+Le0j9CLlZ2mS8AnLVWUqkKGSv
	nk5KE+XlAHTY3bTiA4l8R4jmNw7CoqvDRKI3t/0JbPoWz7jEJSubXnpe7eVRvZB5SrL
	h3lQqT3k5wNFoffWSk5UIZtD6v2hIhVj0T2oIO9g=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659300052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=CjnuoaGqoB2QSPN8HuS8sFWJGDQd5VFOs+8JOX8bCGA=;
	b=LfEUWvrKL4veHNIj+fqK6C48vq6SL8GVhDDSv+OAl1gtCbP3elBdE7KaJc/fketW
	fgLnQu71G872uTgzq3yCok4YfVjNK4NnlFXlWQiccTWUc8oW6mZxlJcTqqeTDruoe75
	edAw3Vsbthzr2YxTESa3//yHRcxExSw4TXTUC150=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018255fd7e4a-4ec3a8d3-de23-45eb-8807-246400ffd8a2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: dabdff0e95f14174c944abf2b0bf16e996ce3889afbfcaf96c7c6f6afd938a6e
Date: Sun, 31 Jul 2022 20:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.31-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659300052
