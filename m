Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27079EA9
	for <ddprobe@lists.linux.dev>; Sun, 10 Apr 2022 05:00:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649566858;
	h=To:Subject:From:Message-Id:Date;
	bh=zxF643JSmFSXRDqlgi9h0aAmDZGT9VfrwxcUvnlv90I=;
	b=knlDtLsS/ncEsWMiYcIZI591oJ6fiV19NOyeGZDTVGjKJZTLOzFuT2mkVlb53RLr
	JuHJmdkFjXQpdoLMXnPznEdcmMXY0DqSJbQfVdmd6ifJN9bn8Gt2HCm5OcFbwSvb3b1
	aUoMs9hGvlulpypVRZ6WqjhEG+xbqtfkdG3cPvIY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649566858;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=zxF643JSmFSXRDqlgi9h0aAmDZGT9VfrwxcUvnlv90I=;
	b=FWGOPyKhM7eo4/P1nvWSIPP+90qQIZF/CXT5Owwho0oZpJMrKPcA+E0Ad2VOmZc2
	QKm5PQP6QNy/0MW5ZXHUedzT8IVuvj/Zf8s3gFaHsK7ZI+LvasQhrchVh1zf1g0wdg4
	QaJs2PaxNFgB++fPYkDdcJQdHziuZGUMjMOi829U=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018011d8bc2f-76e227e6-dfa8-4217-957c-a0549b48fe86-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 62a3dfadb09e4f14e8c86b31f06d93764c0f190081be9a59a6c25ff2c31d4629
Date: Sun, 10 Apr 2022 05:00:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.10-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649566858
