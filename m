Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8999133D6
	for <ddprobe@lists.linux.dev>; Tue, 28 Jun 2022 23:36:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656459412;
	h=To:Subject:From:Message-Id:Date;
	bh=vdWc+m2MrOgTFhs/Eg72svv7ICiTJCAR2gUxoTmMtbk=;
	b=MhSAWqoIllUnUvSrusLWsCja60gG4Gk/5Cq5eJF8vSlE8xWEBlSBk2TfpNo0Rm42
	uNxqvBs/cU5VU9XqOIOaqgCM7SNP0cTBPLevhERr/qMrLAjaVgBo5CXtsuyfbIREEKs
	ArKttXpd/e+lR2VEbCLersivFxckeiNGDf1jPr5w=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656459412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=vdWc+m2MrOgTFhs/Eg72svv7ICiTJCAR2gUxoTmMtbk=;
	b=KVjFOlqI7I/LB4hVvoL/dbaTr4TQyAD/wuYz6JK45hsB7+PJWyyLgni8/zZQesD9
	+QLcC7p/LqqP96lVZKiIVlwSUwax6STAlHE6E+S/u/Erh4H19FOHq0jmsi/vqz0vcLt
	ctvyssdAti7mLTJqzXNXlW6v9rdUX0JStnyKSgS8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181acacc345-541a1901-fd03-406f-8abc-9323d44b3012-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: de067b48259b54da706cb449d124f78654949507503083f36a47faacb62474c1
Date: Tue, 28 Jun 2022 23:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.28-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656459412
