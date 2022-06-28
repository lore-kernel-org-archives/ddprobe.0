Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F3E47A
	for <ddprobe@lists.linux.dev>; Tue, 28 Jun 2022 10:26:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656412012;
	h=To:Subject:From:Message-Id:Date;
	bh=GoVu43bkiMGXYl4Yx5C7j8R+QC0ACn6+KzbQFHJlofg=;
	b=TSL0/EoTDodBrXI0vd/b2w7bGHsWn92hJQwUXnRtNAseIr2yzNNm0JYO24sqUceM
	sC0kFbTwxc0LruagbYST7Zl5PDK9hb5k+5X+iyj/zqTYKokC3wRlyYYIOIixo0m5her
	MHMGVKdvxUSXVZcdkTlkcFPbLQrRcK+f4QE3O+TY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656412012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=GoVu43bkiMGXYl4Yx5C7j8R+QC0ACn6+KzbQFHJlofg=;
	b=T/Kp4I7WjwWTRSpeM1bIpxhX87QBFXc6b+//1pf5dPCPXHMfm4LIykzAFasUSy0W
	FwN4Dq4JE9i0ANb5mfbAVb0yXX6EgVh0fIR7qMF7V2ne82Bw5UAQ2YvhaC0duLoieX2
	dtLaCCI59UdTBEtZibdWqDUfjSDrR3MyFZPvq9JA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181a9d97f0b-e45d7f31-cae8-4c7c-a5b0-5f1215f0b1b0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3e4d092dc8d6f89d666ef8e39ad522beb92a1d30ceab5a421dd9c4da2bd4e5f2
Date: Tue, 28 Jun 2022 10:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.28-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656412012
