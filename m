Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48BF21FA1
	for <ddprobe@lists.linux.dev>; Tue, 15 Mar 2022 09:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647336384;
	h=To:Subject:From:Message-Id:Date;
	bh=WTfFP8EUQT1MXcN8ZCinc6DC3sdOcsBhNQlskuTMSsY=;
	b=b3wi//hg0XQ72L6ieQV9SzV1+3m9fBDMz80+f3ffpfU4fztZcIXekiN/HpU75Nja
	4RiB5dOAX3UMgJIXCLlrcgjswWR7MbnhvvPCY5GNvutqKFb0ZKLQncwWYrM/T+JLOFT
	NICJV/ES+MVsAF4Y2Wmel6zf1hF5WtKEvc7xZy/8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647336384;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=WTfFP8EUQT1MXcN8ZCinc6DC3sdOcsBhNQlskuTMSsY=;
	b=R9uVZmX6ThOM81kS25Q7+c7qxgyEdiZUHaS2H7Qut5CKm/iSotEcRX+r6D2y4FL5
	2IYKVh6hEnWkhdh63VEWlBvFiDt7u8WUn9G1cP4tnz52cYcSHkP/Ltw4wcx3ihM7Vhq
	M3vt1yfTnGprrD47cBgKPlAn3CYGkXZ1ku3XDQ7Y=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f8ce668ed-f8d1aed2-2656-447b-b49d-9792f6ae7d8f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6a9c1b57e8020aa2e76fd5c67f5b97a8ec4f07e5c7053341e6ad410b84bb2002
Date: Tue, 15 Mar 2022 09:26:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.15-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647336384
