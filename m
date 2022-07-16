Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EAFBB7A
	for <ddprobe@lists.linux.dev>; Sat, 16 Jul 2022 04:36:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657946212;
	h=To:Subject:From:Message-Id:Date;
	bh=c8fKOpnYgQjwvJAr+aeb93IsIc1PXbwEOz1RBZLTA6c=;
	b=EKONobI3j5yLH8k1djlLLYAofzVCWzuvjuMvkq9CviYYy8KM68m88QqVZIn8XFgz
	cGErVzBO0XgVDSoDYUxwS3mX+hJPTSnrPxAvmMABMtpDT8d5MZEvGDfVdZTz3l4BELR
	JTsJq0eIcA6yXMqKMA/3eq33nHt/ytjzQZfgDTaM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657946212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=c8fKOpnYgQjwvJAr+aeb93IsIc1PXbwEOz1RBZLTA6c=;
	b=Z3zSxf0kQ2GacQxlve3zaX7S5+WUQIhP98vrR14EQv8FZCduMu9kWG2ebWSOQjLZ
	9iKTkLmWeJrnoZ9+I4PJOx1HdyzypGXVzzXQDEuQcLebbqVKQbcBhEIF1YDmZrwiHkR
	wA+tDy4O7pAOB5+Yt2dshd38BdUcVSgIR7DVFHsU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182054b8795-81b46de0-d1e5-4d97-84b3-9f7cbbec970a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 922b8921de39b368938e1099d196eb7827e13f4fc2c6f55ec6c2dbc530ba82d3
Date: Sat, 16 Jul 2022 04:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.16-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657946212
