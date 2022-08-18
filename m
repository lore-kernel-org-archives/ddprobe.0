Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 797BA4434
	for <ddprobe@lists.linux.dev>; Thu, 18 Aug 2022 15:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660837852;
	h=To:Subject:From:Message-Id:Date;
	bh=7/lMfzmzFJnbuDay+DfSD/5C7oFXu6su09b6kOdqfPg=;
	b=goL/StDeGRqWRE6H02k7dKkUwE3gzJzNMnWpOFyWcyG8vqfZ+OEDPSCFJD0pIICl
	SzmMYxLw3QBtVRe4G4gnY7OO6MmwZm7tbuRqPRA3Y30fiv0RAg5U0D4cev+pV8JlPHU
	qp2kMLVs7ZI9EcdHbRyUv/3jDZ/6q8VtX4MnNNQM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660837852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=7/lMfzmzFJnbuDay+DfSD/5C7oFXu6su09b6kOdqfPg=;
	b=hhariT4ksi1xZv0hWfleGZq6QTY+DolR9NzebUGsh0AaLY2oGU8062By9FhzOsOz
	iA9LAPfy3DjnFbr05/nKDvUdyJUfQLHD+mUV+bbPNlfg8VgfXATSn7w/H0JoMXG48CK
	R3BIrTSQVOg4op421egG+cmH/V2Hn7Dmaa982tfo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182b1a675ef-a988ed10-8da0-40ef-b380-93e872e1c0af-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 026e011fb383e3bdaf3d874249f780ef36098a77c30e27cb3368833392ee84f1
Date: Thu, 18 Aug 2022 15:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.18-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660837852
