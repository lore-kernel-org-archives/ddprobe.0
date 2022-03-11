Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9DD4C7E
	for <ddprobe@lists.linux.dev>; Fri, 11 Mar 2022 05:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646976384;
	h=To:Subject:From:Message-Id:Date;
	bh=XySQWxnYrpt5yLdj/wytRzqnRdlUi08Nk5jI34lsY6w=;
	b=WZgdHKWus8GPf+67i3uN1P41+kxV/0Pb3UEyezKLCtTimdGlVE/7m3IMg5FDInVG
	iHz7UtuVciU5BR73eZnGFL7n+JoSp8szwIIHg+/c54dq+ETgSAL2K9N5bZgBoPrbWhG
	Q/4X8jrRhjIHt9E3JwQ8cQMzoJJitIo96rRNtdRI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646976384;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=XySQWxnYrpt5yLdj/wytRzqnRdlUi08Nk5jI34lsY6w=;
	b=J5x/5NZdjuGmld53f7GaE+O+LpHYjdK3vGlE5tqnhMNUNWv5ZsM2TwiXZV2hhC7W
	3g2fzjFActp0asRm7VzwGJlA0P4G466Lvq3QhywNn7Nv/pe1jYRzddYfRvpjjh1Bz3v
	jOpP1gl38BYy4uNd2ufKhZrJmdeIWjkhV+eaHsyw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f77713eed-95172736-c719-4041-b130-6426f1bddb14-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 72894e03810cf5061707f6408fb4f01fa14508b63c265a3ba0ae431bd6c4d98b
Date: Fri, 11 Mar 2022 05:26:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.11-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646976384
