Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D4F17F
	for <ddprobe@lists.linux.dev>; Sat,  7 May 2022 22:31:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651962718;
	h=To:Subject:From:Message-Id:Date;
	bh=CKsGMqfSX5URwZtQVcLxo+gthUf6a6g1/IdGzEkjv1o=;
	b=QOh5dWumHn4CDdtXSwRdfW2glNvYyaKaSPEHt40Neh2wpul8dS3IGWvGrLdy/hHS
	4msu/fBSVcMsHFCvEInOMQX9rBkL2SDoa4hfTMUiTtyIzfDhEjNMJ/1erYATnSLv33t
	h0UtV9kM3ner6lNWdrLcomYq1xHVmveKZvXE1k+s=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651962718;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=CKsGMqfSX5URwZtQVcLxo+gthUf6a6g1/IdGzEkjv1o=;
	b=kilZYkHL5b3JnDqpA/Yo+KklKiUHz6Ydv1KY3wLlYJdGb1wSnoNpt3wwtoulEIN7
	dmD9hrvf73hj3FSCvvZPl+JK80NfFDJnJzi4PDOMGswAombXS5N1KwG7ow0MA9K1syI
	HrnpM/ECT87t8vn8UUNNJCYCTo2do7lIJkb8QXKM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180a0a6a8b4-7e9cc507-acee-4c8b-9c3c-a6cc54c3401a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f308b62eaab76cb3f983a8f480ad2b254cc1d64c9b6a78438994fbe791d060d9
Date: Sat, 7 May 2022 22:31:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.07-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651962718
