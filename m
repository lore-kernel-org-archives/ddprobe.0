Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30EEA1108
	for <ddprobe@lists.linux.dev>; Sun, 10 Jul 2022 07:36:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657438612;
	h=To:Subject:From:Message-Id:Date;
	bh=YFQMiCW0+bqLnWvoDif4gc9EeE1YGK++maDUNNkT1aQ=;
	b=hoUfpFqWlLNaAUc0R0DTxzx4/E5tridJCSXudddPD6qZ4m9h0T2d7ByEqsL2qHDJ
	gTEYalqbc3tZU8vvwdcuV7hyP/1Z/uZDaMeI0TJLry9jg4+dN3uglLsWBxAWu0psnyT
	c7Gqe1NcE2f8e1gcTks7Iw9v7ZFIycG/Dc0RHpBM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657438612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=YFQMiCW0+bqLnWvoDif4gc9EeE1YGK++maDUNNkT1aQ=;
	b=Ch+ul4zDkAxqzKqZlRO4qMkp5OcPSWK0PMbZbho3jYmyCXP3mZyU2ikT/4uDmPes
	+iIGViYN1d7q54Fd1KXHWWhHhp0OCX1QANoSUM3qa98wdkya0oHlCPpcLH1VijQrfwY
	ug2eq9qFbtmkPjX+6X6iMViry/vZhUg4omt5++Eg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181e70a2c08-20e6f4fa-2f73-40de-9dff-0ab92966f224-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ad19e69fbb0f355836db609b251266e1d2aa2f7ddb8d28dd397a7b9e9d2f64f8
Date: Sun, 10 Jul 2022 07:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.10-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657438612
