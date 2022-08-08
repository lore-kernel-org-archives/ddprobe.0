Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C6357A
	for <ddprobe@lists.linux.dev>; Mon,  8 Aug 2022 20:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659988852;
	h=To:Subject:From:Message-Id:Date;
	bh=3hHRFnQHw+sJb9eaUBd+PrOyqA9x3f+BleeZ0Mw82Es=;
	b=Hs4RNe0kg0rSlytsU+6jY7CZ8p6dIq6HzZYlPkiHzunDf6lyu1lOv2h5crHTepIT
	dTLKfuhR0CjweMMavXMWso5Qd2wCFhDcMQC4DTQLJhBT/RYqi7EY1kl1YKs8IoyOicx
	6rwcpnbAOiJ5TTMhXAK+oUElb9Q3h1RZndyhgSrc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659988852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=3hHRFnQHw+sJb9eaUBd+PrOyqA9x3f+BleeZ0Mw82Es=;
	b=iSbz6mlLISlfvMSsPLI3trd3vXsaOqk9WHg7AcaHbrCv2MuHddmMzrm0BUUHAuXU
	6MXyEO2lYZN2H8AARrPcRIFDgXGJKL0ftbIWSAThRpG/LSVcj/5LEa0o3aXOyElY+k7
	OBiMh0TCoy0l4RfWuaK/uI6iVlpNnQQX3c7b8GNk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101827f0bbf9b-22047903-2174-4118-8938-f23d9ddabc85-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 22a796fb76ce684729b1f5c4da86539033937b4ffdc4ae3d37a295f3447a313f
Date: Mon, 8 Aug 2022 20:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.08-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659988852
