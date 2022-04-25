Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E91257C
	for <ddprobe@lists.linux.dev>; Mon, 25 Apr 2022 07:53:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650873238;
	h=To:Subject:From:Message-Id:Date;
	bh=nf6LxakJ3zCks8iTlQYd4kKbHLGruw2gsGwnREXvI4M=;
	b=kS9EZVguNv3OEF8+p/Rtvwrqpx4iznZT38Hk9E90zGU/sDSMqCcBVaFLDePeoewG
	KtMw75prOCS+U3TSGcg4xrco2xa3JvZXi5zJCb2NuTDWTKFQGcwc2sLHVYZVWpTcT+j
	fVxyciBRoyyzc5ds0Whd8Y3mAuwNBgeTBwWDP75Q=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650873238;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=nf6LxakJ3zCks8iTlQYd4kKbHLGruw2gsGwnREXvI4M=;
	b=TnDWRRq5O/4QP3UBeWCju8R0LBUqdJX3RnGq8zlcRf7oPuatBkyIT78xVOnzLGZA
	i+pbsn1SHVBhIYwR5gQhNsqG+xLbK/vns10Aw5OWzK0OJNYtdRUt8RIqnkM8d+FFxSi
	M9+SsC6DWHUBCZY8rPy12fZjl+vQeX6Kq65/AR2U=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101805fb682fc-31194335-7ef8-4cc0-9eb2-a3af5e5dfefa-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4c34b071f41829dea61a00baf0b9434a030d50eb61d5c7add940a1c5579f3015
Date: Mon, 25 Apr 2022 07:53:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.25-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650873238
