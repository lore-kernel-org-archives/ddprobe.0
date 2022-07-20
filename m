Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30D41746F
	for <ddprobe@lists.linux.dev>; Wed, 20 Jul 2022 19:56:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658347012;
	h=To:Subject:From:Message-Id:Date;
	bh=DLEgN1WxtEII+Gtaau0Bl+6ipCeOLhdujjFv7TPFhPI=;
	b=OAKVzRj5nyugr1Tau3QFBdrFylKcvxFfm30zZhkRPRitTHXP1bxrYriBmdOQxBG2
	U1SBEmQIJY4knZoZgN3HY+oVSrVSMZOn40SV3mRFd7c74jUI+8g3H15DT/kHVv8wDfw
	cf4IunnFo1tuCkuXtQGQQ5gRekwcIOMiDjNeSa/k=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658347012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=DLEgN1WxtEII+Gtaau0Bl+6ipCeOLhdujjFv7TPFhPI=;
	b=iR59yNZvmG3YmjbXszsJZx6eR6Z8lAz08XiHoyzSh0BCohOyidp2PTFx3IfSn7O6
	nA/nzoUiwlWQ1TClB3bdy2JGJGVQLL8id72yYeb3c548TQizYZlCGK1O2By4vkaLdS2
	VIIfSdZaGZR5Gpqg4MRjVdtjgm1VrXfl8FW49owc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101821d2f40b6-8f0da458-5e90-4973-9c82-a515aaab153b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 82e383549c54c91f6712ea6c86df5c2c6b2201b7ed5f7a6f06206e903f35b6b9
Date: Wed, 20 Jul 2022 19:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.20-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658347012
