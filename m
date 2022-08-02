Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D72467F
	for <ddprobe@lists.linux.dev>; Tue,  2 Aug 2022 17:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659462653;
	h=To:Subject:From:Message-Id:Date;
	bh=u+L6lsEwP9dB8tUoOva28A0kixLr79L9p1TRQK2QfOo=;
	b=hXbzOHTUn3nC1V1UqppVdQWgyLQcH2XcWIr3DbJJcuffvh1Qw4EGvZawqd1peZIx
	Cazb6qrNwqpHLLWAom6wfmHhpQhw8sfe++OjPQPTynbnEa4DMMDhemTA7EnBpwOHI8G
	gFxfY94Le9z2nykmzPanGkSK7vWZ6B9W1WK11MyU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659462653;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=u+L6lsEwP9dB8tUoOva28A0kixLr79L9p1TRQK2QfOo=;
	b=PkTJNyj/B91Ug41hRUPXqMbaYgRbHW6AUEAZ6ApfQtQcjh43sIIMwxS6C2kSxwcn
	2QmH3KNWGySkpHyPtOjYyApPIZI5rTC35/TFxe410EJ9YiQ3bHwoHO3AG6u6lGBO/SZ
	YkFD1ulkfkpi2t9vHpxOy2nUhfuSmz7qQ/CUXOcM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101825fae92f5-e3718834-7ce9-4804-b7f5-33a8ca734014-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2ab10d3534f98a5da29155fe09ca13d964a2dbe83f67a02d388a73140bace009
Date: Tue, 2 Aug 2022 17:50:53 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.02-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659462652
