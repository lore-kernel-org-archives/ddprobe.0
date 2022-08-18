Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E6207B
	for <ddprobe@lists.linux.dev>; Thu, 18 Aug 2022 19:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660851652;
	h=To:Subject:From:Message-Id:Date;
	bh=Pt+pwrDuRy5KgRW0gLGYmCoFpSRgjLJeLtcw/rszgI0=;
	b=ZC4el/JQGyGPoJbHB8RcoKvT5kzn8EewDaRnN9I/iPq9AEJw0ccPpSG1XwVNefhm
	BIUedP+6LjabPN+BaCqw4yQMySJB/StTAbm0P0kaSs4ztrG1gvvI4ZvdbX40xy7QDFa
	J+CoD3ELd1tevT9gNEsN8CB+o5v+9lWkT/c/3obs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660851652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Pt+pwrDuRy5KgRW0gLGYmCoFpSRgjLJeLtcw/rszgI0=;
	b=i0v7RZ+y9Nde/AnuyoAw9c5HyrDCwGodtsgoBkeaW93KsZpyhHpCf4j6hSxvQwLM
	egcGcWm4COn2GMFpTuzyILp+N2SJnUrvUzHb5ESjTLz+14QyIC84aqQnRI/B6QnldCX
	ZWErGh8RhpfSMREMKyaGW5OK93VtVObCSe3TJ/vA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182b2790821-0401901b-ea45-43ba-a478-aae81cd5aafd-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3a0bf28274cb962f5b526333554dbeaff754b813aa5cad849acde0f6838d4483
Date: Thu, 18 Aug 2022 19:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.18-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660851652
