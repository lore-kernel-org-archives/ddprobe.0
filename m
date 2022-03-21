Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5692A36F
	for <ddprobe@lists.linux.dev>; Mon, 21 Mar 2022 02:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647831384;
	h=To:Subject:From:Message-Id:Date;
	bh=+GdU4pThqX4U6uXL2UBe1xFJPZwK13CSrbyUvpiZ71E=;
	b=Prt2jMvmKxZ7UCQwZkpj/yuwuMLQvI69VqWfuf8lYJ1DafZfMHkP+g17fAn9oZSX
	nxcLREjRkQsBtDPnhaB8l9JW4O3ELjsFGAdeUHhLT2NsU9IQwiINlmdrrly9UCns7Vh
	SVEoNZPVQ96mEwExaGuptWm5kxcK0SIrLhh1FSn8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647831384;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=+GdU4pThqX4U6uXL2UBe1xFJPZwK13CSrbyUvpiZ71E=;
	b=Q24QjlZ5zGBq9rWlOrGB7p6S7P/TvIE1yJ+tXeTS42kvbD7HdjLe6B7joI8FMsa6
	0MKaaDKTT8veI6iSVycb2STXhQZP2ESkUiijMVgbUqo2uJVRrvvzZevXsUtjPecjG5D
	RXyxu7ONMDxAaR7CyTzTRHBFxNAfaVBIHOhkm92o=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017faa6782bd-c52c5bb7-4693-4046-afd3-32f86e9252e6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f7a50667d2630269178055eabbf47933a3967b79db342363a81b0824ae149fcd
Date: Mon, 21 Mar 2022 02:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.21-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647831384
