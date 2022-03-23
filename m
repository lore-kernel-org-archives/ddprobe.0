Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7B6C77A
	for <ddprobe@lists.linux.dev>; Wed, 23 Mar 2022 01:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647998784;
	h=To:Subject:From:Message-Id:Date;
	bh=jVOvNKKbeb3sAos2YeySSv7lI4zv4Qz9sM5Yi4SJI5g=;
	b=CL9TZA645sEmDepHvBx7o8ts1bjp0A+u3s8IqLbTR/7IkXlgBRXyQXVEN8G3JfLG
	p6oGyiXIiGWanrRhvpcRu8zh35/Kv6497J/RYnA6qCPC/RJnrmV0/YDxlJqXUM4XhD3
	yq8vqeheuoHkavv5xNTfajO/PLamXN15MIt/uOEY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647998784;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=jVOvNKKbeb3sAos2YeySSv7lI4zv4Qz9sM5Yi4SJI5g=;
	b=d0AuyFs0vEbEce1LuMkxhbwxtsdh3GMhsKGDX26UTau4I+MhUyj5TZN0aHbM6GCC
	YY+rgCTwskTWj1zWSgX7+PAJN7k1QP2CbW8dxwI90fyRo3WD+hhZB7UFJ3BIZmmsLgu
	3YzXot8nodciwh2A8lpBIAEe1CceBhotEuk8GMwY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fb461d4e7-46abe960-7ba8-4792-ba6f-b9c9f0e1c2c7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 08e0aca68ba1ab79196333175a105a87562eeee8c9c28eda3e9586b4069a93cd
Date: Wed, 23 Mar 2022 01:26:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.23-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647998784
