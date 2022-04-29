Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06A4110E8
	for <ddprobe@lists.linux.dev>; Fri, 29 Apr 2022 05:50:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651211458;
	h=To:Subject:From:Message-Id:Date;
	bh=NXmL8rCcGvApm+oavb9jSEfRBpzQAV+0YH0E0NwH5I8=;
	b=TaMuwUymQ12cTpuaKAwOJfqQeNAEAr8emtc6MvCkzUrm/e9MTZQdQ6fi7auSk2uo
	q7A+vvBpHTBqumJmjhdcOvs2+OH60/bOf5OH+fOYcJZxS8cwLZqoTnAxaodGYRLGKyM
	Fwi3vDHhREPO6kRIWIwCuGCzPI1RV3J79rENqFdw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651211458;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=NXmL8rCcGvApm+oavb9jSEfRBpzQAV+0YH0E0NwH5I8=;
	b=DKoBD9p/yZp15houY3/kR1UUfdQ91uTCJb/xjxoDcGzUV7V8GZsx3IUl8rqe8qBA
	LhUK3MlG1KoCVNHWM81l9RhLA5oQYfaAyxFx7L/BndnPmVDzm4mfDPL2DATGJP+GL9L
	Md8AF4kYFCWgACYTUapK9M1CRJ1IAg0eiWPcF+RI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018073df56f9-00054710-8b0b-4054-a407-19d3c09d2969-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 07258755221d51d73fa270b450ddee514c7eb8b58b531e27bd4daef28f81d5c8
Date: Fri, 29 Apr 2022 05:50:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.29-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651211458
