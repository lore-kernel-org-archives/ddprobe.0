Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE65E321C
	for <ddprobe@lists.linux.dev>; Tue,  5 Apr 2022 17:50:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649181058;
	h=To:Subject:From:Message-Id:Date;
	bh=hsH8S51OkasASdCOIA/Nwho4042+tD0swyixDrq9Xi0=;
	b=Q/6RkKRMWmcZkDK32J0HtsKpvQrAMpVa+v0lX5issSxE3ESBkuDwGDIxtATRtbz+
	2sC5j7oTOaOjCeKjtKF1hDy7383z4p659luTFd/rgiV0rHF0uuOkgwVSze8S5s7EgNN
	ZwNsah8jT/yQ0FDxJFK5oHFO98Dgn8rgnm7jSXps=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649181058;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=hsH8S51OkasASdCOIA/Nwho4042+tD0swyixDrq9Xi0=;
	b=ayyNssI3VUxPblqKHisVuSOtnia6TGftvX0O+iPvfzK+cLMUMLSBWthPlPF6vHkJ
	sNMus3chQMdTyunHsInsr+eMN8a3NbqmVV+4UXdgESYiJYoi2068n3chSTMKVyjQTsj
	4iOytV9qn0MltP6db3L3aBfELJLrG9CK+lrqCuro=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017ffad9e527-4b4115ad-700e-404f-b74b-0d609404c578-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a27fd91233daeb8b065fe88ff597fdba4e57aebe835ffa9c85fd076c8994d1ca
Date: Tue, 5 Apr 2022 17:50:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.05-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649181058
