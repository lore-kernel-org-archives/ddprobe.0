Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CBB8763E
	for <ddprobe@lists.linux.dev>; Mon, 21 Mar 2022 16:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647881185;
	h=To:Subject:From:Message-Id:Date;
	bh=nPUHFc1p6uMSs6fZrVIDwZ84R0nyByU1bn84dpIWtaU=;
	b=fhDpe9joUb7kN0HaWitxDqiofc3vrI4q2cLQlZFFFCmdXncbctAkBRbvfpzyniNc
	6FWpx4hBLfprI7l5ICNOvvJLoiRQqxlUhVoRPqyqJKSz3OKF18Ijcsxc0QKOU3d6s9b
	TMlSEmhW5kTAi2QdrutOmx+nwWaboVvwpau0uN5w=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647881185;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=nPUHFc1p6uMSs6fZrVIDwZ84R0nyByU1bn84dpIWtaU=;
	b=aTXnESUuKNTV7DrNZFXciHgMTOeRAX4UiPataZk4cXvk7MDElvZ1BxXVa09w9mu2
	LKV0dVnrm2Lu3jhjKWbSLhlZ0bSI9Ao9BqyDFbKUlvl5aYwEs+MdEyNKxevmHFaA7SV
	hHm4dYAKQfRnkZ+X6bD7y/j3k/8ScqvTwTINNB4c=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fad5f6670-05821c13-e3e4-45b7-9972-406497723bf3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 227ed4e2df0d8b02fb031f1f383a038e36dcc2441315a7ef6534ad753a432a12
Date: Mon, 21 Mar 2022 16:46:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.21-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647881184
