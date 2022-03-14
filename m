Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8E03CED2
	for <ddprobe@lists.linux.dev>; Mon, 14 Mar 2022 04:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647230785;
	h=To:Subject:From:Message-Id:Date;
	bh=ewDuElVkxiDQ3yYn04364G+3r+t5ZoBuxQUE3E1zzD4=;
	b=jgXwdI1sbWhntoPIgSDFUe5M2CVsFkKWvsqk38/NrVTy3+gv6Foi7P0rYxtmQHe0
	jqzKZbfsBV8UFQKAfcpygJfUhd1bHZUJHXX6YxIUtq6eeu1AEYKA4MM7AiSjiJjMTuP
	1kGtA+IQAO7OJFCRfr87o1vPaM5cFu4e9B74jPBo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647230785;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ewDuElVkxiDQ3yYn04364G+3r+t5ZoBuxQUE3E1zzD4=;
	b=Q4XKhPmMTqVWKdl7wHEG5YIBICw4XyLjadzQ+8i12s8NMWxujTwxoKymanRjl1Qj
	9esXRBNycKrQ5F+/QlTDPNSpSRXtPfhbPdxRtvtYNqpSGP5hmJELhlWIyH5L2vihn04
	/rKZ8AXi65JeGg9+uzFiEEXfUrsdfbDf7OLM8IDs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f869b1519-872f5f66-c741-4fed-9a49-19fd2d4d4b93-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 65862ee892375e82961448f64e8a9ffc333df1148e6cdfaf8793af13eeee0fcc
Date: Mon, 14 Mar 2022 04:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.14-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647230784
