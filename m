Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09D82258E
	for <ddprobe@lists.linux.dev>; Mon, 23 May 2022 16:21:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653322919;
	h=To:Subject:From:Message-Id:Date;
	bh=ICVLhK8IEdTe72JGOmYTWcIQxCjT+aD5CUD05PBZRhI=;
	b=QvpnXqpfD2wXAsDyVJ4G+ympGnQM7OnZPRzrZDoR4Vtcyl4DDo0e4LnV+4OxShnf
	jA9HsfzX7B71brQsv36sQeaCnmuouoUOC8EfrJTZL0UaPB/WfiA7ofyid2zU9zNpr+2
	TXGpLpKZMZGGE+8XtX0SJKd9R1cO9ZcYU57o6htY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653322919;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ICVLhK8IEdTe72JGOmYTWcIQxCjT+aD5CUD05PBZRhI=;
	b=dzGG2vt7ITozyx7vD9jrr88upi3MAPd9QjFxKofxC2oy0PqTjYnJujNPwsOhGAjH
	6yWKdSEUjEyBj1WNg5G12uJ9Ok62CTALTU5Zg0DUgnrJiv8ymhFe+oYwLagLQ5r4Gu2
	1/6WofOYBliKd+hCGFcOXTtPbqgEgkB2csgxEVBE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180f1b9adac-8f1fd080-f9ba-4f43-9a89-82473e811f30-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ae6d6e5d21b81afc27695b51a500b4380b6629f48df3491770c981bbcb5d4206
Date: Mon, 23 May 2022 16:21:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.23-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653322919
