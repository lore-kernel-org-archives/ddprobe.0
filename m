Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55DBB7A
	for <ddprobe@lists.linux.dev>; Wed, 15 Jun 2022 15:38:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655307479;
	h=To:Subject:From:Message-Id:Date;
	bh=1+9otnai1P99rC2DYI19OXkXk2IrHP/v3KGp1sEqLXs=;
	b=FeYTbYG7xlRpACbW7UCf58KM0Mh5LDbQXd2pZJFcXKjZFYvG+DqHhvtieSq7must
	8nybSYePKuLop/ZZStDnmGrG/YJhxAUu8tatnlvZ7BVYC7onIm07bHwGZfiq7YG2m1g
	7Kk+JLptpBd09IF1GxJkAmNxZTizqAl6rIzzUUZo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655307479;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=1+9otnai1P99rC2DYI19OXkXk2IrHP/v3KGp1sEqLXs=;
	b=iTlzbDJI/4Kzm6Pat5BODI7a7O2etRgU1PTV3/2ej7SisQjwQZXj7PQErFT8W8Di
	V4yjW0G5eCAJejD2iYKvL58+Nr9N2qznOhBjgcH58wEbi/5vQadh04KvTbyT9w9OPs+
	k7tJqNsgU9xeCsVDKRqMaFHuVmgY/xVP2oAefuwM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101816803a8d8-04f12386-1d81-4950-bb8d-430e11ba8546-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e809da3f5f0c3fb4cb8ae5532c09772dfd17e26200c1b5d27271b500be4a4925
Date: Wed, 15 Jun 2022 15:37:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.15-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655307479
