Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42D4315A5
	for <ddprobe@lists.linux.dev>; Wed, 11 May 2022 05:40:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1652247599;
	h=To:Subject:From:Message-Id:Date;
	bh=Lhr4l1A9IVtlycBaSJwn3M5u5T5dG6P7TGzSzzs3luk=;
	b=NbApFWlIQSirfcGBz9BRlcPH7CkUHLyugmChOxP+qMhrtN/RghW88qrVFb/ktLWM
	DemZdTqk/0zD+z3Kip6KHOeRI/fJ4ZMdOwk+3WtjPT2PaTOMIyWaaMvF/qXT/JfMly/
	cz/lX4MhiZM6DbgCtSH9+2uuFNueRJ6BkdjE/sMw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652247599;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Lhr4l1A9IVtlycBaSJwn3M5u5T5dG6P7TGzSzzs3luk=;
	b=VJFAAqgABkMhlTxPVGn3G956ivXxt+a46Z3+qhAiJXj+AGv7l8ln1lqsW+NPq1eR
	nJqP92q74q+AQkdf5BvWF3kkvEZ79V4h7EDYDtgzmcJG2XaDs29+91Y4nCR1Waz+KEd
	c9aTMF/snV5jzFe87eNm/0ZmGro0/31xFX27ItFw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180b1a198cd-9a3b29f0-6142-410c-b33b-2a23e5f8642f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ba687cec4e5ae7c873b897cf72f3085486c6564adfb52d671009c32ea288d428
Date: Wed, 11 May 2022 05:39:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.11-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652247599
