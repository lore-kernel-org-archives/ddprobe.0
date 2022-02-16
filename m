Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 589321849
	for <ddprobe@lists.linux.dev>; Wed, 16 Feb 2022 10:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645005984;
	h=To:Subject:From:Message-Id:Date;
	bh=uy0o56NLpT8+A5qBZs0SW8KLaFiiUNCP6S2l8R1V7zw=;
	b=TGEKOXOjzF/UtVmHuer6+n+Fg+e2XSkd2tgjVldRA6YINEplBCd/PNKY1r2HQxs7
	WlBUOo4jACcWIc72cL/vnn6/UkUuIeqnB8+4Hz+HMSl9yYMY9tTglH9FdZ/c/a7fEvE
	uueA2LwJNlukVz9/1whT5RT2vnrFRMZapD+i+RGQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645005984;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=uy0o56NLpT8+A5qBZs0SW8KLaFiiUNCP6S2l8R1V7zw=;
	b=CWNVVFdMfE7ZjoG7DSMXduHp0F+gvL5+HebU5HgIIuBSLO8gqevp84YV6g7bOkpi
	s1YQPwD3gllCkTurakw/rwlo4BFUW7YS5qI+hm+ov+lv7X7h9M/KngN4wkOPLO+YkQb
	Tc/U+9JDflToFKAK8NcCzlcuonFYF/rRyO12SlLA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f01ff53e8-d45f7004-33e2-4bfa-ae18-a86fd70650a4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b6316cac3f327b8c5d9f7562a96a97374f12dca93a78bb11b750a28077f99d77
Date: Wed, 16 Feb 2022 10:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.16-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645005984
