Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 030C615A8
	for <ddprobe@lists.linux.dev>; Thu, 14 Apr 2022 00:59:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649897998;
	h=To:Subject:From:Message-Id:Date;
	bh=gB1Qoi/rr4djwAXkh+Ad9sIQ7YUaAgKV7q3yjDE68fE=;
	b=Z+/o9eOAGNu0M/59UKf6C2RdEB+Cn/NDQEVIrKK0cObEUo5zZHruq/fVaJ90yUMh
	UljgRKEYku5c85g3P24KhYY739V9KQfztzy2sIhaMBD9o+LX8Wi1GPN4ti1jCmrvdHE
	Dks/3GrbXPrWr9WdCiD8Vjjl4BhWKWfzRIGgaKmc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649897998;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=gB1Qoi/rr4djwAXkh+Ad9sIQ7YUaAgKV7q3yjDE68fE=;
	b=IeZd2nVrLS7kpQJpbj24GgQ6twOuLxcsSRTE5AT43Tc32GHWi5Rvz82Z6F7p8VhN
	t1cxNbLX98hAJqUHZUWEReyoRsGjvkYSn2+OUWM8rNiJg6vlYGOWzJXBJvyvVikEJe2
	XdVPa0cvrvrG2G91ebc63DL4P5ThmiKA4gM99oHo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180259587aa-aaac9c4f-c5a4-44c4-a72f-0ab7a7acddd0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 42bf3f038f8d23baba820ff1df79e5b9a4dff75dc0da758e97681b43b6ff2e62
Date: Thu, 14 Apr 2022 00:59:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.14-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649897998
