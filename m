Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1ED7365B
	for <ddprobe@lists.linux.dev>; Fri,  8 Jul 2022 05:26:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657258012;
	h=To:Subject:From:Message-Id:Date;
	bh=KmYmE5pfgQwStv+UzNpUuZgbY6nHSc59Cs/SvqUrg6s=;
	b=LKPpDTtFhWnseb4aHHIcHu6xvRw9Cph4ZX+NsYXUbbNN1CnIbNPCHsbKBzNIR2qh
	15wi8/+ubS6k+YH67vQFL1xTgTaeoAP5zfs6fCr15ibYAquH7V60c2F0/EnKHisOAXR
	ycJ3YwwfKdWEyxJ5niUdrqMsp7YfF4rSM1N2nVZE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657258012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=KmYmE5pfgQwStv+UzNpUuZgbY6nHSc59Cs/SvqUrg6s=;
	b=eT9pzft5jfCwFq+CRw9DbX0XMufNMOmJPK0tBhVaiThTlFFYMO06JC0no5dD2o/1
	fIWdAe9wjjSMMth1jPrf+q81NggCYF2Xv/huGsDwBKWtXn2+9xKLKQ6G53yLYR8pNEO
	pWLUMvRhdFXeohJ5GjNCIczgEPs81vfF5QvL3d1s=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181dc466e7a-2ec99210-0b23-467d-bc0e-d93ace2d9e4f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d41bc068981fea88428d07b7152cd778626556df98e353d178fba67db44d14fd
Date: Fri, 8 Jul 2022 05:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.08-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657258012
