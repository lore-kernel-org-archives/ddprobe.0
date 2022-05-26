Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10FB71855
	for <ddprobe@lists.linux.dev>; Thu, 26 May 2022 17:37:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653586679;
	h=To:Subject:From:Message-Id:Date;
	bh=FH+UmdTN3Zhbz6RD3pglr35Zo8KtAOzV0IPSh5kHffQ=;
	b=eFCQ1l2ePU0KVOBz999TnRX4WfnuHN5WZt5W8m7uUYaSUAqdggOLJAaSWzGjh4dZ
	kmREqfXrCGv8D9RuJlcu24X8Iq998ueTdiEggOZ99E45nalhPAAmgGx2O/EQwI5Lr3b
	mKs4piWa5JqGCONHyME5VFLoDq1aECgnFyw2KuFo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653586679;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=FH+UmdTN3Zhbz6RD3pglr35Zo8KtAOzV0IPSh5kHffQ=;
	b=TcVmmWLy3m+6i1Iw+6zwsvhJKilUEGoY3H63kwk/1Zy29R4Um8YD0j3YxbS49Ke2
	CLWS/6RZ4VGKoVhWJoLZ64/+guUs+L6EoFXk4oG0B4NIdGALJLX+Ev1JKJ/DBggozwK
	ve52GN1BtOTKpgRzQ26Rlr5KDGuzHepPCcbN6n+I=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018101725619-32a40216-6d57-4a67-b61e-9b7416e523c1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 888977c96c9d78cb960f9f758facee9beef01e4fb458d6331b7406e6e89a8ff8
Date: Thu, 26 May 2022 17:37:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.26-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653586679
