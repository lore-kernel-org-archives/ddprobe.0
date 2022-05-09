Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F2F1B10F2
	for <ddprobe@lists.linux.dev>; Mon,  9 May 2022 01:13:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1652058838;
	h=To:Subject:From:Message-Id:Date;
	bh=vX6D8fs9fOWNRNCWsRBnUhkvbGQA9WtJHHNZZFXtDoo=;
	b=bmLqO1+8dtcZ7mdbZa+ZmvhghMZ9v42CaP+WxI232gpNDwc/MZmehnAeYyx/0zsi
	cJornR8jQwkK36TLairf/+4Ya6SmgEK5tooyIovtKtUinUuHlGaz3CqsXDeudT62WMF
	k0w034DBpFWt4NX8CyOS4HgYgoQKyhFxnIz624kY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652058838;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=vX6D8fs9fOWNRNCWsRBnUhkvbGQA9WtJHHNZZFXtDoo=;
	b=At605QwimTmRoNe5myQ4NdGPNBgVZlh2gCSuIpAkGupGvFWWt2a0/T8kKsVPbtQQ
	1nZqVENb0d568nW0jwlFv+VFX+T5emtHgnsdHZ0hTTEsuTmKMtH3wtgXFV1y/cbBSaU
	Bvrr/qF5zwbRyKtEfygJPrXPLNsdT1m8sy6YpfFY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180a6615538-78407e56-18dd-491b-8880-622b3ef93aaa-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b2d37b3ce4b41c498e7f0eef6b5a1674e81f995ee64a9b4e2dc78737670d3e38
Date: Mon, 9 May 2022 01:13:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.09-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652058838
