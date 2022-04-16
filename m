Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB53A2567
	for <ddprobe@lists.linux.dev>; Sat, 16 Apr 2022 13:20:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650115258;
	h=To:Subject:From:Message-Id:Date;
	bh=TL2chtaDcE9oeQ/WxB+FcWw85TX3JsoW9CxPeWRM3+A=;
	b=Fy4My3d6121LnMn7j15fUVNeV7JO7RO5JE/IMY735W8vOdOnuXuIDuBLnqQPr4Sz
	UnroKeKs3TeKj2uuOqhVbxHifc0iN7W9MXeUWdtqlTRU6asiI/GmbLTLzmtOh/Qdd2A
	/fnqL+wkmBxtdYmqZpGbAb0bUothNVQmRW/7qQPQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650115258;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=TL2chtaDcE9oeQ/WxB+FcWw85TX3JsoW9CxPeWRM3+A=;
	b=fwJGOznC3E2uhWRF9Jqd+dZxq8Kh4Rwc/LK0BOmTnkGT8AnetXX9u4zstqg+3QnJ
	NCVEGxsDdNk7jAqiOdaZdMC0LBr2xQVYu/ZtsYxS8y/pAz8WlYgtBInaXYMazIhgHG4
	U2ZjXdEkLTiKA1mY1B5CZa51DEzDpc8atE3gX4+k=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101803288a780-cb606bb0-0f5f-40ca-b4ce-146de7f59707-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e242aca28124be02e8097777832d194d51a0c49436701e67981012bc7bc355ed
Date: Sat, 16 Apr 2022 13:20:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.16-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650115258
