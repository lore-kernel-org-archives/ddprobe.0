Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A60B7C
	for <ddprobe@lists.linux.dev>; Mon, 28 Mar 2022 04:21:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648441318;
	h=To:Subject:From:Message-Id:Date;
	bh=/CwB92G7VULUQ015VR3M0uRsWTxJJoNAnkqkqAk3/6k=;
	b=XtyiI0T6zE0/glLKJNmNOw7d7ptEHf49yHggm21l562Wn4UTaSOAZ/FHdMY+KXIa
	Nfg0aki6j2F6/1N5GX0xS5/mwnVkzTYg69DNk9YnQ0O+K4URpHbqk/fqF3Of1i/J6q7
	hfUDDKpzmNwoTMSrN4wsECORuk4PcRsLORybvyIY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648441318;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=/CwB92G7VULUQ015VR3M0uRsWTxJJoNAnkqkqAk3/6k=;
	b=k5gnJQdSFiV8zJ8jeJH990uAw5T6H2WQ8hdA7vUvpBweycf13A8feESyNBLr6jae
	cwRfQ+YF4M1KG3b1tsqiapV1pXwlbcs5DdmbbkxnrF/P+vH63XGQtN5LZlZY94TgH9i
	io1y0saIt0DFUvq4zthYSF2pT8Cqq+9nb6waFHfk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fcec25be1-bf27ce5b-723b-47bb-9fe3-3de4faa4fb50-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f683a87ef9d239348e38910be64d153fbdabd038054ce732235092d15995d606
Date: Mon, 28 Mar 2022 04:21:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.28-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648441318
