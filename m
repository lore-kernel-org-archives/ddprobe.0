Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22DBB625
	for <ddprobe@lists.linux.dev>; Thu,  7 Jul 2022 09:46:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657187212;
	h=To:Subject:From:Message-Id:Date;
	bh=k7d0KiqGRtAqv7Ia08fD2b8zu8cNx0c+eIqAvzDlGSo=;
	b=Z0qzII9zpWiuW2yzBq5m3rz7biPSzmGK/NSEuUlI6hvv1zSx6Lcjdd3jnLb906HO
	lj0ZNkRvwhIE2cGlbm79G4sHJhKRODDJoAEdplXT0G9LIscx0fs313Ikk+6vqH5YOpF
	y3McloMJrC7bRsRlwVRDyh25Dg7cnxKmst1kgnHY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657187212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=k7d0KiqGRtAqv7Ia08fD2b8zu8cNx0c+eIqAvzDlGSo=;
	b=DOL//XxdTe1jjivtSCkl4sz8Il1e/5GxH7mS0DU1xsoHul8/92ld8xoPZ21SW+4h
	jFs3TphZnD9DR2vZeG5rSbAXTNKABOk67MOMfGK/JAlJKbEJrZ/lNDbMDbhvmhNVNc6
	ZHH+RJj3XIEmQ6u928hvdH1xX7YIuTGdmyWwlwg8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181d80e1bf5-ba70c741-50cb-475b-b100-354876c1ce7f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5d8178e4db9b7e57a37c4084eb5a49771541645362b2eff687fc9e75a3cec147
Date: Thu, 7 Jul 2022 09:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.07-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657187212
