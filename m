Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 584FA7F
	for <ddprobe@lists.linux.dev>; Tue,  2 Aug 2022 09:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659432652;
	h=To:Subject:From:Message-Id:Date;
	bh=Mxbj3H8L6PZUspfhBAvoSOJbUNwFMy0YXG2YEMFuDIU=;
	b=PmIzLImkqIX3vU3bnrubfI5fiJSQEN1hsBlgNQTntE3cSo0DJfWiX+TfOlyAFyTT
	+l7gW8Qlhks+EbqYSl/oBTu2UYTRcm5NQsWsU/n53bqg+a3UypWVHgiRka5rS986jA+
	X30jybm9QyCcp6nU/RiaB+pKolytqctVAsUvjd/Q=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659432652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Mxbj3H8L6PZUspfhBAvoSOJbUNwFMy0YXG2YEMFuDIU=;
	b=HEG33zzP/zDanffZBntf76waWc9U6+Oju8Q8Gk7BoC4loKH5wI1WZk6cfrVb0sPI
	x0Qc2vO6uIswFtOTo7sZebdjnX/ER6OrrPD0/kgcfG2q9D2HqUfsbDvQ1l/KZTvY8dN
	lglDfYWT7InxSLZhBvt9ho2u2Xp8uC8ywbfysQQw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101825de4ceeb-c7c7e386-45c3-48be-8025-3e44b99f6c28-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b19cef5d39dba2311ad539569b2bf4e94b609a59325f866a3430b696836776f8
Date: Tue, 2 Aug 2022 09:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.02-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659432652
